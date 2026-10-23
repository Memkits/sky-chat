
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |reel.calcit/ |js-ffi/
      :type-slots $ {} $ :dispatch-op |app.schema/Op
  :files $ {}
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'ScrollHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait ScrollHost
            .!scrollIntoViewIfNeeded $ :: 'Fn $ {}
              :args $ [] 'app.comp.container/ScrollHost
              :return 'Unit
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ :: 'Trait
        'comp-char $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-char (code)
            let
                points $ ->
                  turn-codes ([]) code
                  chunks 2
                  map $ fn (pair)
                    let
                        numbers pair
                      +
                        * 2 $ .unwrap-or (first numbers) 0
                        .unwrap-or (last numbers) 0
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
                store $ reel :store
                states store.:states
              div
                {} $ :style $ merge ui/global ui/fullscreen ui/column
                comp-header
                comp-messages store.:messages
                comp-input $ app.schema/read-input-branch $ >> states :input
                when dev? $ comp-reel (>> states :reel) (reel-view/view-data reel) ({})
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'reel.typed/State 'app.schema/Op 'app.schema/Store
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
                    dispatch! $ app.schema/Op :states cursor $ app.schema/InputData :content (event-value event)
                  :autofocus true
                  :on-keydown $ fn (event dispatch!)
                    when
                      and
                        = |Enter $ event-key event
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
            decode-map-as
              .unwrap $ get event :key
              , 'String
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'Dynamic
        'event-value $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn event-value (event)
            decode-map-as
              .unwrap $ get event :value
              , 'String
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'Dynamic
        'generate-color $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn generate-color (name)
            decode-map-as (gen-color name) 'String
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
              (:some body) (element-request-fullscreen! body)
              (:none) &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'scroll-last! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn scroll-last! ()
            match (query-selector "|#message-area > :last-child")
              (:some element)
                .!scrollIntoViewIfNeeded $ js-cast element 'app.comp.container/ScrollHost
              (:none) (println "|no message target")
            , &unit
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
          :require (respo-ui.core :as ui)
            respo.core :refer $ defcomp <> >> div textarea span list->
            respo.comp.space :refer $ =<
            reel.comp.reel :refer $ comp-reel
            app.config :refer $ dev?
            respo.util.format :refer $ hsl
            |string-to-color :default gen-color
            app.schema :as app.schema
            js-ffi.browser :refer $ element-focus! query-selector random set-timeout! element-request-fullscreen!
            reel.typed-compat :as reel-view
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'cdn? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def cdn?
            = |true $ .unwrap-or (get-env |cdn) |false
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
          :code $ quote $ defref *reel (typed/new-reel app.schema/store)
          :examples $ []
          :schema $ :: 'Ref $ :: 'reel.typed/State 'app.schema/Op 'app.schema/Store
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when config/dev? $ println |Dispatch: op
            if (enum? op)
              reset! *reel $ match (typed/decode-control op)
                (:some control) (typed/apply-control updater @*reel control)
                (:none)
                  typed/record-op updater @*reel (app.schema/decode-op op) (generate-id!) (shared/now-ms)
              raise "|Expected Enum operation"
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! () (load-console-formatter!)
            println "|Running mode:" $ if config/dev? |dev |release
            render-app!
            add-watch! *reel :changes $ fn (reel previous) (render-app!)
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
            narrow-element $ .unwrap $ query-selector |.app
          :examples $ []
          :schema $ :: 'respo.dom/DomElement
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            storage-set!
              .unwrap $ get config/site :storage-key
              format-cirru-edn $ &struct:to-map $ @*reel :store
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch! *reel :changes) (clear-cache!)
                add-watch! *reel :changes $ fn (reel previous) (render-app!)
                reset! *reel $ typed/refresh updater @*reel app.schema/store
                hud! |ok~ |Ok
              hud! |error build-errors
            , &unit
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
            respo.core :refer $ render! clear-cache!
            app.comp.container :refer $ comp-container
            app.updater :refer $ updater
            app.schema :as app.schema
            reel.util :refer $ listen-devtools!
            app.config :as config
            |./calcit.build-errors.mjs :default build-errors
            |bottom-tip :default hud!
            js-ffi.browser :refer $ query-selector set-before-unload! set-interval! set-timeout! storage-set!
            reel.typed :as typed
            js-ffi.shared :as shared
            respo.ffi.browser :refer $ narrow-element
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
          :examples $ []
          :schema $ :: 'EnumDef
        'Store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Store
            :states $ :: 'Map 'Dynamic 'Dynamic
            :token 'String
            :messages $ :: 'List 'app.schema/Message
          :examples $ []
          :schema $ :: 'StructDef
        'decode-op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-op (message)
            match message
              (:states cursor value)
                Op :states
                  decode-map-as cursor $ :: 'List 'Dynamic
                  , value
              (:hydrate-storage data)
                Op :hydrate-storage $ decode-map-as
                  if (struct? data) (&struct:to-map data) data
                  , 'app.schema/Store
              (:message text)
                Op :message $ decode-map-as text 'String
              (:rename name)
                Op :rename $ decode-map-as name 'String
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Op)
            :args $ [] 'Enum
        'read-input-branch $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-input-branch (states)
            InputBranch :cursor
              decode-map-as
                .unwrap $ get states :cursor
                :: 'List 'Dynamic
              , :data $ match (get states :data)
                (:none) (Option :none)
                (:some data)
                  Option :some $ decode-map-as
                    if (struct? data) (&struct:to-map data) data
                    , 'app.schema/InputData
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/InputBranch)
            :args $ [] $ :: 'Map 'Dynamic 'Dynamic
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
                assoc store :states $ decode-map-as
                  assoc-in (store :states) (conj cursor :data) data
                  :: 'Map 'Dynamic 'Dynamic
              (:hydrate-storage data) data
              (:message message)
                assoc store :messages $ conj (store :messages)
                  app.schema/Message :token (store :token) :message message
              (:rename token) (assoc store :token token)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Store)
            :args $ [] 'app.schema/Store 'app.schema/Op 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require $ app.schema :as app.schema
