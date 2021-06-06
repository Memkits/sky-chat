
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!)
    :modules $ [] |respo.calcit/compact.cirru |lilac/compact.cirru |memof/compact.cirru |respo-ui.calcit/compact.cirru |respo-markdown.calcit/compact.cirru |reel.calcit/compact.cirru
    :version |0.0.1
  :files $ {}
    |app.comp.container $ {}
      :ns $ quote
        ns app.comp.container $ :require (respo-ui.core :as ui)
          respo.core :refer $ defcomp defeffect <> >> div button textarea span input list->
          respo.comp.space :refer $ =<
          reel.comp.reel :refer $ comp-reel
          respo-md.comp.md :refer $ comp-md
          app.config :refer $ dev?
          respo.util.format :refer $ hsl
          memof.alias :refer $ memof-call
      :defs $ {}
        |scroll-view! $ quote
          defn scroll-view! () $ js/setTimeout
            fn () $ let
                target $ js/document.querySelector "\"#message-area"
                last-child $ if (some? target) (.-lastElementChild target)
              if (some? last-child) (.!scrollIntoViewIfNeeded last-child) (js/console.warn "\"no target")
            , 100
        |turn-codes $ quote
          defn turn-codes (acc code)
            if (= 0 code) (pad9 acc)
              recur
                conj acc $ rem code 2
                js/Math.floor $ * 0.5 code
        |comp-messages $ quote
          defcomp comp-messages (ms)
            div
              {} $ :style ui/expand
              list->
                {} $ :id "\"message-area"
                -> ms
                  either $ []
                  .map-indexed $ fn (idx m)
                    [] idx $ comp-message m
              =< nil 80
        |comp-container $ quote
          defcomp comp-container (reel)
            let
                store $ :store reel
                states $ :states store
              div
                {} $ :style (merge ui/global ui/fullscreen ui/column)
                memof-call comp-header
                memof-call comp-messages $ :messages store
                memof-call comp-input $ >> states :input
                when dev? $ comp-reel (>> states :reel) reel ({})
        |comp-char $ quote
          defcomp comp-char (code)
            let
                points $ ->
                  turn-codes ([]) code
                  .section-by 2
                  .map $ fn (pair)
                    +
                      * 2 $ first pair
                      last pair
              div
                {} $ :style
                  {} (:display :inline-block) (:width 18) (:line-height "\"6px") (:margin-right 4)
                    :box-shadow $ str "\"0 0 2px " (hsl 0 0 80)
                , & $ -> points
                  map $ fn (point)
                    div $ {}
                      :class-name $ str "\"cell cell-" point
                      :style $ {} (:width 6) (:height 6) (:display :inline-block)
        |comp-header $ quote
          defcomp comp-header () $ div
            {} $ :style
              merge ui/row-parted $ {} (:padding "\"4px 6px") (:font-weight :bold) (:font-size 16)
                :background-color $ hsl 0 0 97
                :border-bottom $ str "\"1px solid " (hsl 0 0 90)
            <> "\"<"
            <> "\"Sky Chat"
            <> "\"..."
        |pad9 $ quote
          defn pad9 (acc)
            if
              < (count acc) 18
              recur $ concat ([] 0) acc
              , acc
        |comp-message $ quote
          defcomp comp-message (content)
            div
              {} $ :style
                merge ui/row $ {} (:width "\"90%") (:padding "\"4px 6px")
              div ({})
                div $ {}
                  :style $ {} (:width 40) (:height 40)
                    :background-color $ hsl (rand-int 360) (rand-int 80) (rand-int 90)
                    :border-radius "\"4px"
              =< 8 nil
              div
                {} $ :style ui/expand
                div
                  {} $ :style
                    {}
                      :color $ hsl 0 0 70
                      :font-size 10
                      :line-height "\"16px"
                  <> "\"她他它"
                comp-sentence content
        |comp-input $ quote
          defcomp comp-input (states)
            let
                cursor $ :cursor states
                state $ either (:data states)
                  {} $ :content "\""
              div
                {} $ :style
                  merge ui/row-middle $ {} (:padding "\"6px 4px")
                    :background-color $ hsl 0 0 97
                    :border-top $ str "\"1px solid " (hsl 0 0 90)
                textarea $ {}
                  :value $ :content state
                  :placeholder "\"Content"
                  :style $ merge ui/textarea ui/expand
                    {} (:height 40) (:line-height "\"24px") (:border :none)
                  :on-input $ fn (e d!)
                    d! cursor $ assoc state :content (:value e)
                  :autofocus true
                  :on-keydown $ fn (e d!)
                    let
                        event $ :event e
                      when
                        = "\"Enter" $ .-key event
                        .!preventDefault $ :event e
                        d! :message $ .-value
                          .-target $ :event e
                        d! cursor $ assoc state :content "\""
                        scroll-view!
                =< 6 nil
                div $ {}
                  :style $ {}
                    :border $ str "\"2px solid " (hsl 200 80 60)
                    :width 28
                    :height 28
                    :border-radius "\"50%"
        |comp-sentence $ quote
          defcomp comp-sentence (text)
            list->
              {} $ :style
                {} (:width "\"100%") (:word-break :break-all) (:line-height "\"16px")
              -> text (.split "\"")
                .map-indexed $ fn (idx char)
                  [] idx $ comp-char (.!charCodeAt char 0)
      :proc $ quote ()
    |app.config $ {}
      :ns $ quote (ns app.config)
      :defs $ {}
        |cdn? $ quote
          def cdn? $ cond
              exists? js/window
              , false
            (exists? js/process) (= "\"true" js/process.env.cdn)
            :else false
        |dev? $ quote (def dev? true)
        |site $ quote
          def site $ {} (:dev-ui "\"http://localhost:8100/main-fonts.css") (:release-ui "\"http://cdn.tiye.me/favored-fonts/main-fonts.css") (:cdn-url "\"http://cdn.tiye.me/calcit-workflow/") (:title "\"Calcit") (:icon "\"http://cdn.tiye.me/logo/mvc-works.png") (:storage-key "\"workflow")
      :proc $ quote ()
    |app.main $ {}
      :ns $ quote
        ns app.main $ :require
          respo.core :refer $ render! clear-cache! realize-ssr!
          app.comp.container :refer $ comp-container
          app.updater :refer $ updater
          app.schema :as schema
          reel.util :refer $ listen-devtools!
          reel.core :refer $ reel-updater refresh-reel
          reel.schema :as reel-schema
          app.config :as config
      :defs $ {}
        |ssr? $ quote
          def ssr? $ some? (js/document.querySelector |meta.respo-ssr)
        |repeat! $ quote
          defn repeat! (duration cb)
            js/setTimeout
              fn () (cb)
                repeat! (* 1000 duration) cb
              * 1000 duration
        |dispatch! $ quote
          defn dispatch! (op op-data)
            when
              and config/dev? $ not= op :states
              println "\"Dispatch:" op op-data
            reset! *reel $ reel-updater updater @*reel op op-data
        |main! $ quote
          defn main! () (load-console-formatter!)
            println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
            if ssr? $ render-app! realize-ssr!
            render-app! render!
            add-watch *reel :changes $ fn (reel prev) (render-app! render!)
            listen-devtools! |a dispatch!
            .addEventListener js/window |beforeunload $ fn (event) (persist-storage!)
            repeat! 60 persist-storage!
            ; let
                raw $ .getItem js/localStorage (:storage-key config/site)
              when (some? raw)
                dispatch! :hydrate-storage $ extract-cirru-edn (js/JSON.parse raw)
            js/setTimeout
              fn () (dispatch! :message "\"你好呀") (dispatch! :message "\"中午吃了吗")
              , 1000
            println "|App started."
        |persist-storage! $ quote
          defn persist-storage! () $ .setItem js/localStorage (:storage-key config/site)
            js/JSON.stringify $ to-cirru-edn (:store @*reel)
        |*reel $ quote
          defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |snippets $ quote
          defn snippets () $ println config/cdn?
        |render-app! $ quote
          defn render-app! (renderer)
            renderer mount-target (comp-container @*reel) (\ dispatch! % %2)
        |reload! $ quote
          defn reload! () (remove-watch *reel :changes) (clear-cache!)
            add-watch *reel :changes $ fn (reel prev) (render-app! render!)
            reset! *reel $ refresh-reel @*reel schema/store updater
        |mount-target $ quote
          def mount-target $ .querySelector js/document |.app
      :proc $ quote ()
    |app.schema $ {}
      :ns $ quote (ns app.schema)
      :defs $ {}
        |store $ quote
          def store $ {}
            :states $ {}
              :cursor $ []
            :messages $ []
      :proc $ quote ()
    |app.updater $ {}
      :ns $ quote
        ns app.updater $ :require
          respo.cursor :refer $ update-states
      :defs $ {}
        |updater $ quote
          defn updater (store op data op-id op-time)
            case-default op
              do (println "\"unknown store:" op) store
              :states $ update-states store data
              :hydrate-storage data
              :message $ update store :messages
                fn (xs) (conj xs data)
      :proc $ quote ()
