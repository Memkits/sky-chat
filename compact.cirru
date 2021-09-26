
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
          "\"string-to-color" :default gen-color
      :defs $ {}
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
        |pad9 $ quote
          defn pad9 (acc)
            if
              < (count acc) 18
              recur $ concat ([] 0) acc
              , acc
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
                  :placeholder "\"Message..."
                  :style $ merge ui/textarea ui/expand
                    {} (:height 40) (:line-height "\"24px") (:border :none)
                  :on-input $ fn (e d!)
                    d! cursor $ assoc state :content (:value e)
                  :autofocus true
                  :on-keydown $ fn (e d!)
                    let
                        event $ :event e
                      when
                        and
                          = "\"Enter" $ .-key event
                          not $ .blank? (:content state)
                        .!preventDefault $ :event e
                        d! :message $ :content state
                        d! cursor $ assoc state :content "\""
                        scroll-view!
                =< 6 nil
                div $ {}
                  :style $ {}
                    :border $ str "\"2px solid " (hsl 200 80 60)
                    :width 28
                    :height 28
                    :border-radius "\"50%"
                    :cursor :pointer
                  :on-click $ fn (e d!)
                    let
                        event $ :event e
                      when
                        not $ .blank? (:content state)
                        .!preventDefault $ :event e
                        d! :message $ :content state
                        d! cursor $ assoc state :content "\""
                        .!focus $ js/document.querySelector "\"textarea"
                        scroll-view!
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
        |scroll-view! $ quote
          defn scroll-view! () $ js/setTimeout
            fn () $ let
                target $ js/document.querySelector "\"#message-area"
                last-child $ if (some? target) (.-lastElementChild target)
              if (some? last-child) (.!scrollIntoViewIfNeeded last-child) (js/console.warn "\"no target")
            , 100
        |comp-header $ quote
          defcomp comp-header () $ div
            {} $ :style
              merge ui/row-parted $ {} (:padding "\"4px 6px") (:font-weight :bold) (:font-size 16)
                :background-color $ hsl 0 0 97
                :border-bottom $ str "\"1px solid " (hsl 0 0 90)
            span nil
            span
              {} $ :on-click
                fn (e d!) (js/document.body.requestFullscreen)
              <> "\"Sky Chat" $ {} (:font-family ui/font-fancy)
            span nil
        |turn-codes $ quote
          defn turn-codes (acc code)
            if (= 0 code) (pad9 acc)
              recur
                conj acc $ .rem code 2
                js/Math.floor $ * 0.5 code
        |comp-sentence $ quote
          defcomp comp-sentence (text)
            list->
              {} $ :style
                {} (:width "\"100%") (:word-break :break-all) (:line-height "\"16px")
              -> text (.split "\"")
                .map-indexed $ fn (idx char)
                  [] idx $ comp-char (.!charCodeAt char 0)
        |comp-message $ quote
          defcomp comp-message (msg)
            let
                content $ :message msg
                name $ :token msg
              div
                {} $ :style
                  merge ui/row $ {} (:width "\"90%") (:padding "\"4px 6px")
                div ({})
                  div $ {}
                    :style $ {} (:width 40) (:height 40)
                      :background-color $ gen-color name
                      :border-radius "\"4px"
                    :on-click $ fn (e d!)
                      d! :rename $ str (js/Math.random)
                =< 8 nil
                div
                  {} $ :style ui/expand
                  div
                    {} $ :style
                      {}
                        :color $ hsl 0 0 70
                        :font-size 10
                        :line-height "\"16px"
                    <> name
                  comp-sentence content
    |app.schema $ {}
      :ns $ quote (ns app.schema)
      :defs $ {}
        |store $ quote
          def store $ {}
            :states $ {}
              :cursor $ []
            :token "\"TODO"
            :messages $ []
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
                fn (xs)
                  conj xs $ {}
                    :token $ :token store
                    :message data
              :rename $ assoc store :token data
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
          "\"./calcit.build-errors" :default build-errors
          "\"bottom-tip" :default hud!
      :defs $ {}
        |render-app! $ quote
          defn render-app! () $ render! mount-target (comp-container @*reel) dispatch!
        |persist-storage! $ quote
          defn persist-storage! () $ .setItem js/localStorage (:storage-key config/site)
            js/JSON.stringify $ to-cirru-edn (:store @*reel)
        |mount-target $ quote
          def mount-target $ .querySelector js/document |.app
        |*reel $ quote
          defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |main! $ quote
          defn main! () (load-console-formatter!)
            println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
            render-app!
            add-watch *reel :changes $ fn (reel prev) (render-app!)
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
        |snippets $ quote
          defn snippets () $ println config/cdn?
        |dispatch! $ quote
          defn dispatch! (op op-data)
            when
              and config/dev? $ not= op :states
              println "\"Dispatch:" op op-data
            reset! *reel $ reel-updater updater @*reel op op-data
        |reload! $ quote
          defn reload! () $ if (nil? build-errors)
            do (remove-watch *reel :changes) (clear-cache!)
              add-watch *reel :changes $ fn (reel prev) (render-app!)
              reset! *reel $ refresh-reel @*reel schema/store updater
              hud! "\"ok~" "\"Ok"
            hud! "\"error" build-errors
        |repeat! $ quote
          defn repeat! (duration cb)
            js/setTimeout
              fn () (cb)
                repeat! (* 1000 duration) cb
              * 1000 duration
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
