
{} (:about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --full` first. Manual edits must follow format and schema conventions, then run `calcit edit format`.") (:package |app)
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'app.main/main!) (:mode :native) (:reload-fn 'app.main/reload!)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/
      :type-slots $ {}
  :files $ {}
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-char $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-char (code)
              let
                  points $ ->
                    turn-codes ([]) code
                    section-by 2
                    map $ fn (pair)
                      +
                        * 2 $ unsafe-coerce (first pair) 'Number
                        unsafe-coerce (last pair) 'Number
                div
                  {} $ :style
                    {} (:display :inline-block) (:width 18) (:line-height |6px) (:margin-right 4)
                      :box-shadow $ str "|0 0 2px " (hsl 0 0 80)
                  , & $ -> points
                    map $ fn (point)
                      div $ {}
                        :class-name $ str "|cell cell-" point
                        :style $ {} (:width 6) (:height 6) (:display :inline-block)
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-container (reel)
              let
                  reel-map $ unsafe-coerce reel 'Map
                  store $ unsafe-coerce (&map:get reel-map :store) 'Map
                  states $ unsafe-coerce (&map:get store :states) 'Map
                div
                  {} $ :style (merge ui/global ui/fullscreen ui/column)
                  memof1-call comp-header
                  memof1-call comp-messages $ &map:get store :messages
                  memof1-call comp-input $ >> states :input
                  when dev? $ comp-reel (>> states :reel) reel ({})
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-header $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-header () $ div
              {} $ :style
                merge ui/row-parted $ {} (:padding "|4px 6px") (:font-weight :bold) (:font-size 16)
                  :background-color $ hsl 0 0 97
                  :border-bottom $ str "|1px solid " (hsl 0 0 90)
              span $ {}
              span
                {} $ :on-click
                  fn (e d!)
                    .!requestFullscreen $ unsafe-coerce
                      .-body $ unsafe-coerce js/document 'JsObject
                      , 'JsObject
                <> "|Sky Chat" $ {} (:font-family ui/font-fancy)
              span $ {}
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-input $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-input (states)
              let
                  states-map $ unsafe-coerce states 'Map
                  cursor $ &map:get states-map :cursor
                  state $ unsafe-coerce
                    option:unwrap-or (get states-map :data)
                      {} $ :content |
                    , 'Map
                  content $ unsafe-coerce (&map:get state :content) 'String
                div
                  {} $ :style
                    merge ui/row-middle $ unsafe-coerce
                      {} (:padding "|6px 4px")
                        :background-color $ hsl 0 0 97
                        :border-top $ str "|1px solid " (hsl 0 0 90)
                      , 'Map
                  textarea $ {} (:value content) (:placeholder |Message...)
                    :style $ merge ui/textarea ui/expand
                      {} (:height 40) (:line-height |24px) (:border :none)
                    :on-input $ fn (e d!)
                      d! cursor $ assoc state :content
                        unsafe-coerce
                          &map:get (unsafe-coerce e 'Map) :value
                          , 'String
                    :autofocus true
                    :on-keydown $ fn (e d!)
                      let
                          event $ unsafe-coerce
                            &map:get (unsafe-coerce e 'Map) :event
                            , 'JsObject
                        when
                          and
                            = |Enter $ unsafe-coerce (.-key event) 'String
                            not $ blank? content
                          .!preventDefault event
                          d! :message content
                          d! cursor $ assoc state :content |
                          scroll-view!
                  =< 6 nil
                  div $ {}
                    :style $ {}
                      :border $ str "|2px solid " (hsl 200 80 60)
                      :width 28
                      :height 28
                      :border-radius |50%
                      :cursor :pointer
                    :on-click $ fn (e d!)
                      let
                          event $ unsafe-coerce
                            &map:get (unsafe-coerce e 'Map) :event
                            , 'JsObject
                        when
                          not $ blank? content
                          .!preventDefault event
                          d! :message content
                          d! cursor $ assoc state :content |
                          .!focus $ unsafe-coerce
                            .!querySelector (unsafe-coerce js/document 'JsObject) |textarea
                            , 'JsObject
                          scroll-view!
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-message $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-message (msg)
              let
                  msg-map $ unsafe-coerce msg 'Map
                  content $ &map:get msg-map :message
                  name $ &map:get msg-map :token
                div
                  {} $ :style
                    merge ui/row $ {} (:width |90%) (:padding "|4px 6px")
                  div ({})
                    div $ {}
                      :style $ {} (:width 40) (:height 40)
                        :background-color $ gen-color name
                        :border-radius |4px
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
                          :line-height |16px
                      <> name
                    comp-sentence content
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-messages $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-messages (ms)
              div
                {} $ :style ui/expand
                list->
                  {} $ :id |message-area
                  -> ms
                    either $ []
                    map-indexed $ fn (idx m)
                      [] idx $ comp-message m
                =< nil 80
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-sentence $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-sentence (text)
              list->
                {} $ :style
                  {} (:width |100%) (:word-break :break-all) (:line-height |16px)
                -> (split text |)
                  map-indexed $ fn (idx char)
                    [] idx $ comp-char (.!charCodeAt char 0)
          :examples $ []
          :schema $ :: 'Dynamic
        'pad9 $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn pad9 (acc)
              if
                < (count acc) 18
                recur $ concat ([] 0) acc
                , acc
          :examples $ []
          :schema $ :: 'Dynamic
        'scroll-view! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn scroll-view! () $ js/setTimeout
              fn () $ let
                  target $ .!querySelector (unsafe-coerce js/document 'JsObject) |#message-area
                  last-child $ if (js-present? target)
                    .-lastElementChild $ unsafe-coerce target 'JsObject
                    , js/undefined
                if (js-present? last-child)
                  .!scrollIntoViewIfNeeded $ unsafe-coerce last-child 'JsObject
                  js/console.warn "|no target"
              , 100
          :examples $ []
          :schema $ :: 'Dynamic
        'turn-codes $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn turn-codes (acc code)
              if (= 0 code) (pad9 acc)
                recur
                  conj acc $ &number:rem (unsafe-coerce code 'Number) 2
                  floor $ * 0.5 code
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.container $ :require (respo-ui.core :as ui)
            respo.core :refer $ defcomp defeffect <> >> div button textarea span input list->
            respo.comp.space :refer $ =<
            reel.comp.reel :refer $ comp-reel
            respo-md.comp.md :refer $ comp-md
            app.config :refer $ dev?
            respo.util.format :refer $ hsl
            memof.once :refer $ memof1-call
            |string-to-color :default gen-color
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'cdn? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def cdn? $ cond
                exists? js/window
                , false
              (exists? js/process) (= |true js/process.env.cdn)
              :else false
          :examples $ []
          :schema $ :: 'Dynamic
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote (def dev? true)
          :examples $ []
          :schema $ :: 'Dynamic
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def site $ {} (:dev-ui |http://localhost:8100/main-fonts.css) (:release-ui |http://cdn.tiye.me/favored-fonts/main-fonts.css) (:cdn-url |http://cdn.tiye.me/calcit-workflow/) (:title |Calcit) (:icon |http://cdn.tiye.me/logo/mvc-works.png) (:storage-key |workflow)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns app.config)
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
          :examples $ []
          :schema $ :: 'Dynamic
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op op-data)
              when
                and config/dev? $ not= op :states
                println |Dispatch: op op-data
              reset! *reel $ reel-updater updater @*reel (:: op op-data)
          :examples $ []
          :schema $ :: 'Dynamic
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn main! () (load-console-formatter!)
              println "|Running mode:" $ if config/dev? |dev |release
              render-app!
              add-watch *reel :changes $ fn (reel prev) (render-app!)
              listen-devtools! |a dispatch!
              .!addEventListener (unsafe-coerce js/window 'JsObject) |beforeunload $ fn (event) (persist-storage!)
              repeat! 60 persist-storage!
              ; let
                (raw (.getItem js/localStorage (:storage-key config/site)))
                when (some? raw)
                  dispatch! :hydrate-storage $ extract-cirru-edn (js/JSON.parse raw)
              js/setTimeout
                fn () (dispatch! :message "|你好呀") (dispatch! :message "|中午吃了吗")
                , 1000
              println "|App started."
          :examples $ []
          :schema $ :: 'Dynamic
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def mount-target $ .!querySelector (unsafe-coerce js/document 'JsObject) |.app
          :examples $ []
          :schema $ :: 'Dynamic
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn persist-storage! () $ .!setItem (unsafe-coerce js/localStorage 'JsObject) (:storage-key config/site)
              js/JSON.stringify $ to-cirru-edn
                &map:get (unsafe-coerce @*reel 'Map) :store
          :examples $ []
          :schema $ :: 'Dynamic
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ if (nil? build-errors)
              do (remove-watch *reel :changes) (clear-cache!)
                add-watch *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ refresh-reel @*reel schema/store updater
                hud! |ok~ |Ok
              hud! |error build-errors
          :examples $ []
          :schema $ :: 'Dynamic
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn render-app! () $ render! mount-target (comp-container @*reel) dispatch!
          :examples $ []
          :schema $ :: 'Dynamic
        'repeat! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn repeat! (duration cb)
              js/setTimeout
                fn () (cb)
                  repeat! (* 1000 duration) cb
                * 1000 duration
          :examples $ []
          :schema $ :: 'Dynamic
        'snippets $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn snippets () $ println config/cdn?
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.main $ :require
            respo.core :refer $ render! clear-cache! realize-ssr!
            app.comp.container :refer $ comp-container
            app.updater :refer $ updater
            app.schema :as schema
            reel.util :refer $ listen-devtools!
            reel.core :refer $ reel-updater refresh-reel
            reel.schema :as reel-schema
            app.config :as config
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def store $ {}
              :states $ {}
                :cursor $ []
              :token |TODO
              :messages $ []
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns app.schema)
    'app.updater $ %{} 'FileEntry
      :defs $ {}
        'updater $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn updater (store op op-id op-time)
              match op
                (:states cursor data) (update-states store cursor data)
                (:hydrate-storage data) data
                (:message data)
                  update store :messages $ fn (xs)
                    conj xs $ {}
                      :token $ &map:get (unsafe-coerce store 'Map) :token
                      :message data
                (:rename data) (assoc store :token data)
                _ $ do (println "|unknown store:" op) store
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.updater $ :require
            respo.cursor :refer $ update-states
