
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :native) (:reload-fn 'app.main/reload!)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/
      :type-slots $ {} $ :dispatch-op |app.schema/Op
  :files $ {}
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'FullscreenHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait FullscreenHost
            .request-fullscreen! $ :: 'Fn $ {} (:return 'Unit)
              :args $ [] 'app.comp.container/FullscreenHost
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ :: 'Trait
        'ScrollHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait ScrollHost
            .scroll-into-view-if-needed! $ :: 'Fn $ {} (:return 'Unit)
              :args $ [] 'app.comp.container/ScrollHost
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ :: 'Trait
        'comp-char $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-char (code)
            let
                points $ ->
                  turn-codes ([]) code
                  section-by 2
                  map $ fn (pair)
                    let
                        numbers $ assert-type pair $ :: 'List 'Number
                      +
                        * 2 $ option:unwrap-or (first numbers) 0
                        option:unwrap-or (last numbers) 0
              div
                {} $ :style $ {} (:display :inline-block) (:width 18) (:line-height |6px) (:margin-right 4)
                  :box-shadow $ str "|0 0 2px " $ hsl 0 0 80
                , & $ -> points $ map
                  fn (point)
                    div $ {}
                      :class-name $ str "|cell cell-" point
                      :style $ {} (:width 6) (:height 6) (:display :inline-block)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Number
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel)
            let
                store $ decode-map-as (&map:get reel :store) app.schema/Store
                states store.:states
              div
                {} $ :style $ merge ui/global ui/fullscreen ui/column
                comp-header
                comp-messages store.:messages
                comp-input $ decode-map-as (>> states :input) app.schema/InputBranch
                when dev? $ comp-reel (>> states :reel) reel $ {}
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'app.schema/Reel
            :features $ #{} :js-ffi
        'comp-header $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-header ()
            div
              {} $ :style $ merge ui/row-parted
                {} (:padding "|4px 6px") (:font-weight :bold) (:font-size 16)
                  :background-color $ hsl 0 0 97
                  :border-bottom $ str "|1px solid " $ hsl 0 0 90
              span $ {}
              span
                {} $ :on-click $ fn (event dispatch!) (request-fullscreen!)
                <> "|Sky Chat" $ {} $ :font-family ui/font-fancy
              span $ {}
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'comp-input $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-input (states)
            let
                cursor states.:cursor
                state $ match states.:data
                  (:some data) data
                  (:none) (app.schema/InputData :content |)
                content state.:content
              div
                {} $ :style $ merge ui/row-middle
                  {} (:padding "|6px 4px")
                    :background-color $ hsl 0 0 97
                    :border-top $ str "|1px solid " $ hsl 0 0 90
                textarea $ {} (:value content) (:placeholder |Message...)
                  :style $ merge ui/textarea ui/expand $ {} (:height 40) (:line-height |24px) (:border :none)
                  :on-input $ fn (event dispatch!)
                    dispatch! $ app.schema/Op :states cursor $ app.schema/InputData :content
                      event-value $ assert-type event $ :: 'Map 'Tag 'Dynamic
                  :autofocus true
                  :on-keydown $ fn (event dispatch!)
                    when
                      and
                        = |Enter $ event-key $ assert-type event (:: 'Map 'Tag 'Dynamic)
                        not $ blank? content
                      dispatch! $ app.schema/Op :message content
                      dispatch! $ app.schema/Op :states cursor $ app.schema/InputData :content |
                      scroll-view!
                =< 6 0
                div $ {}
                  :style $ {}
                    :border $ str "|2px solid " $ hsl 200 80 60
                    :width 28
                    :height 28
                    :border-radius |50%
                    :cursor :pointer
                  :on-click $ fn (event dispatch!)
                    when
                      not $ blank? content
                      dispatch! $ app.schema/Op :message content
                      dispatch! $ app.schema/Op :states cursor $ app.schema/InputData :content |
                      match (query-selector |textarea)
                        (:some element) (element-focus! element)
                        (:none) &unit
                      scroll-view!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'app.schema/InputBranch
        'comp-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-message (message)
            let
                content message.:message
                name message.:token
              div
                {} $ :style $ merge ui/row
                  {} (:width |90%) (:padding "|4px 6px")
                div ({})
                  div $ {}
                    :style $ {} (:width 40) (:height 40)
                      :background-color $ generate-color name
                      :border-radius |4px
                    :on-click $ fn (event dispatch!)
                      dispatch! $ app.schema/Op :rename $ str (random)
                =< 8 0
                div
                  {} $ :style ui/expand
                  div
                    {} $ :style $ {}
                      :color $ hsl 0 0 70
                      :font-size 10
                      :line-height |16px
                    <> name
                  comp-sentence content
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'app.schema/Message
        'comp-messages $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-messages (messages)
            div
              {} $ :style ui/expand
              list->
                {} $ :id |message-area
                map-indexed messages $ fn (idx message)
                  [] idx $ comp-message message
              =< 0 80
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'List 'app.schema/Message
        'comp-sentence $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-sentence (text)
            list->
              {} $ :style $ {} (:width |100%) (:word-break :break-all) (:line-height |16px)
              -> (split text |)
                map-indexed $ fn (idx char)
                  [] idx $ comp-char $ get-char-code char
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String
        'event-key $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn event-key (event)
            assert-type (&map:get event :key) 'String
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
        'event-value $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn event-value (event)
            assert-type (&map:get event :value) 'String
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
        'generate-color $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn generate-color (name)
            let
                generate $ unsafe-coerce gen-color $ :: 'Fn
                  {} (:return 'String)
                    :args $ [] 'String
              generate name
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String
            :features $ #{} :js-ffi
        'pad9 $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn pad9 (acc)
            if
              < (count acc) 18
              recur $ concat ([] 0) acc
              , acc
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] $ :: 'List 'Number
            :return $ :: 'List 'Number
        'request-fullscreen! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn request-fullscreen! ()
            match (query-selector |body)
              (:some body)
                .request-fullscreen! $ unsafe-coerce body 'app.comp.container/FullscreenHost
              (:none) &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'scroll-last! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn scroll-last! ()
            match (query-selector "|#message-area > :last-child")
              (:some element)
                .scroll-into-view-if-needed! $ unsafe-coerce element 'app.comp.container/ScrollHost
              (:none) (println "|no message target")
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'scroll-view! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn scroll-view! () (set-timeout! scroll-last! 100) &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'turn-codes $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn turn-codes (acc code)
            if (= 0 code) (pad9 acc)
              recur
                conj acc $ &number:rem code 2
                floor $ * 0.5 code
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'List 'Number) 'Number
            :return $ :: 'List 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require ([] respo-ui.core :as ui)
            [] respo.core :refer $ [] defcomp <> >> div textarea span list->
            [] respo.comp.space :refer $ [] =<
            [] reel.comp.reel :refer $ [] comp-reel
            [] app.config :refer $ [] dev?
            [] respo.util.format :refer $ [] hsl
            [] |string-to-color :default gen-color
            [] app.schema :as app.schema
            [] js-ffi.browser :refer $ [] element-focus! query-selector random set-timeout!
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'cdn? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def cdn?
            = |true $ option:unwrap-or (get-env |cdn) |false
          :examples $ []
          :schema $ :: 'Bool
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev? true
          :examples $ []
          :schema $ :: 'Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} (:dev-ui |http://localhost:8100/main-fonts.css) (:release-ui |http://cdn.tiye.me/favored-fonts/main-fonts.css) (:cdn-url |http://cdn.tiye.me/calcit-workflow/) (:title |Calcit) (:icon |http://cdn.tiye.me/logo/mvc-works.png) (:storage-key |workflow)
          :examples $ []
          :schema $ :: 'Map 'Tag 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *reel
            -> reel-schema/reel (assoc :base app.schema/store) (assoc :store app.schema/store)
          :examples $ []
          :schema $ :: 'Ref 'app.schema/Reel
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when config/dev? $ println |Dispatch: op
            reset! *reel $ assert-type (reel-updater updater @*reel op) 'app.schema/Reel
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Enum
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! () (load-console-formatter!)
            println "|Running mode:" $ if config/dev? |dev |release
            render-app!
            add-watch *reel :changes $ fn (reel previous) (render-app!)
            listen-devtools! |a dispatch!
            set-before-unload! $ fn (event) (persist-storage!)
            repeat! 60 persist-storage!
            set-timeout!
              fn ()
                dispatch! $ app.schema/Op :message "|你好呀"
                dispatch! $ app.schema/Op :message "|中午吃了吗"
                , &unit
              , 1000
            println "|App started."
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target
            option:unwrap $ query-selector |.app
          :examples $ []
          :schema $ :: 'js-ffi.browser/DomElementHost
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            storage-set! (config/site :storage-key)
              format-cirru-edn $ decode-map-as (&map:get @*reel :store) app.schema/Store
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch *reel :changes) (clear-cache!)
                add-watch *reel :changes $ fn (reel previous) (render-app!)
                reset! *reel $ assert-type (refresh-reel @*reel app.schema/store updater) 'app.schema/Reel
                hud! |ok~ |Ok
              hud! |error build-errors
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render! mount-target (comp-container @*reel) dispatch!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'repeat! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn repeat! (duration callback)
            set-interval! callback $ * 1000 duration
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Number)
            :args $ [] 'Number $ :: 'Fn
              {} (:return 'Unit)
                :args $ []
        'snippets $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn snippets () (println config/cdn?)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            [] respo.core :refer $ [] render! clear-cache!
            [] app.comp.container :refer $ [] comp-container
            [] app.updater :refer $ [] updater
            [] app.schema :as app.schema
            [] reel.util :refer $ [] listen-devtools!
            [] reel.core :refer $ [] reel-updater refresh-reel
            [] reel.schema :as reel-schema
            [] app.config :as config
            [] |./calcit.build-errors :default build-errors
            [] |bottom-tip :default hud!
            [] js-ffi.browser :refer $ [] query-selector set-before-unload! set-interval! set-timeout! storage-set!
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'InputBranch $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct InputBranch
            :cursor $ :: 'List 'Dynamic
            :data $ :: 'Option 'app.schema/InputData
          :examples $ []
          :schema $ :: 'StructDef
        'InputData $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct InputData (:content 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'Message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Message (:token 'String) (:message 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'Op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Op
            :states (:: 'List 'Dynamic) 'Dynamic
            :hydrate-storage 'app.schema/Store
            :message 'String
            :rename 'String
            :reel/toggle
            :reel/recall 'Number
            :reel/run
            :reel/step
            :reel/merge
            :reel/reset
            :reel/remove 'Number
          :examples $ []
          :schema $ :: 'EnumDef
        'Reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def Reel &unit
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'Store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Store
            :states $ :: 'Map 'Tag 'Dynamic
            :token 'String
            :messages $ :: 'List 'app.schema/Message
          :examples $ []
          :schema $ :: 'StructDef
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            Store :states
              {} $ :cursor $ []
              , :token |TODO :messages $ []
          :examples $ []
          :schema $ :: 'app.schema/Store
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:states cursor data)
                decode-map-as (update-states store cursor data) app.schema/Store
              (:hydrate-storage data) data
              (:message message)
                assoc store :messages $ conj store.:messages $ app.schema/Message :token store.:token :message message
              (:rename token) (assoc store :token token)
              _ $ do (println "|unknown store:" op) store
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Store)
            :args $ [] 'app.schema/Store 'Enum 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require
            [] respo.cursor :refer $ [] update-states
            [] app.schema :as app.schema
