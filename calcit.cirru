
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |reel.calcit/ |js-ffi/
      :type-slots $ {} $ :dispatch-op 'app.schema/Op
  :files $ {}
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'ScrollHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait ScrollHost
            .!scrollIntoViewIfNeeded $ Fn app.comp.container/ScrollHost $ -> Unit
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ quote Trait
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
                {} $ :style $ {} (:display |inline-block) (:width |18px) (:line-height |6px) (:margin-right |4px)
                  :box-shadow $ str "|0 0 2px " $ hsl 0 0 80
                , & $ -> points $ map
                  fn (point)
                    div $ {}
                      :class-name $ str "|cell cell-" point
                      :style $ {} (:width |6px) (:height |6px) (:display |inline-block)
          :examples $ []
          :schema $ quote $ Fn Number (-> respo.schema/Component)
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel on-control!)
            let
                store $ reel :store
                states store.:states
              div
                {} $ :style $ .merge ui/global ui/fullscreen ui/column
                comp-header
                comp-messages store.:messages
                comp-input $ app.schema/read-input-branch $ >> states :input
                if dev?
                  Option :some $ comp-typed-reel (>> states :reel) reel ({}) on-control!
                  Option :none
          :examples $ []
          :schema $ quote $ Fn (reel.typed/State app.schema/Op app.schema/Store)
            Fn reel.typed/Control $ -> Unit
            -> respo.schema/Component
        'comp-header $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-header ()
            div
              {} $ :style $ .merge ui/row-parted
                {} (:padding "|4px 6px") (:font-weight |bold) (:font-size |16px)
                  :background-color $ hsl 0 0 97
                  :border-bottom $ str "|1px solid " $ hsl 0 0 90
              span $ {}
              span
                {} $ :on-click $ fn (event dispatch!) (request-fullscreen!)
                <> "|Sky Chat" $ {} $ :font-family ui/font-fancy
              span $ {}
          :examples $ []
          :schema $ quote $ Fn (-> respo.schema/Component)
        'comp-input $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-input (states)
            let
                cursor states.:cursor
                state $ match states.:data
                  (:some data) data
                  (:none) (app.schema/InputData :content |)
                content state.:content
              div
                {} $ :style $ .merge ui/row-middle
                  {} (:padding "|6px 4px")
                    :background-color $ hsl 0 0 97
                    :border-top $ str "|1px solid " $ hsl 0 0 90
                textarea $ {} (:value content) (:placeholder |Message...)
                  :style $ .merge ui/textarea ui/expand $ {} (:height |40px) (:line-height |24px) (:border |none)
                  :on-input $ fn (event dispatch!)
                    hint-fn $ Fn respo.schema/RespoEvent
                      Fn app.schema/Op $ -> Unit
                      -> Unit
                    dispatch! $ app.schema/Op :states cursor $ app.schema/InputData :content (event-value event)
                    , &unit
                  :autofocus true
                  :on-keydown $ fn (event dispatch!)
                    hint-fn $ Fn respo.schema/RespoEvent
                      Fn app.schema/Op $ -> Unit
                      -> Unit
                    when
                      and
                        = |Enter $ event-key event
                        not $ blank? content
                      dispatch! $ app.schema/Op :message content
                      dispatch! $ app.schema/Op :states cursor $ app.schema/InputData :content |
                      scroll-view!
                    , &unit
                space-x 6
                div $ {}
                  :style $ {}
                    :border $ str "|2px solid " $ hsl 200 80 60
                    :width |28px
                    :height |28px
                    :border-radius |50%
                    :cursor |pointer
                  :on-click $ fn (event dispatch!)
                    hint-fn $ Fn respo.schema/RespoEvent
                      Fn app.schema/Op $ -> Unit
                      -> Unit
                    when
                      not $ blank? content
                      dispatch! $ app.schema/Op :message content
                      dispatch! $ app.schema/Op :states cursor $ app.schema/InputData :content |
                      match (query-selector |textarea)
                        (:some element) (element-focus! element)
                        (:none) &unit
                      scroll-view!
                    , &unit
          :examples $ []
          :schema $ quote $ Fn app.schema/InputBranch (-> respo.schema/Component)
        'comp-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-message (message)
            let
                content message.:message
                name message.:token
              div
                {} $ :style $ .merge ui/row
                  {} (:width |90%) (:padding "|4px 6px")
                div ({})
                  div $ {}
                    :style $ {} (:width |40px) (:height |40px)
                      :background-color $ generate-color name
                      :border-radius |4px
                    :on-click $ fn (event dispatch!)
                      dispatch! $ app.schema/Op :rename $ str (random)
                space-x 8
                div
                  {} $ :style ui/expand
                  div
                    {} $ :style $ {}
                      :color $ hsl 0 0 70
                      :font-size |10px
                      :line-height |16px
                    <> name
                  comp-sentence content
          :examples $ []
          :schema $ quote $ Fn app.schema/Message (-> respo.schema/Component)
        'comp-messages $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-messages (messages)
            div
              {} $ :style ui/expand
              keyed->
                {} $ :id |message-area
                map-indexed messages $ fn (idx message)
                  hint-fn $ Fn Number app.schema/Message $ -> respo.schema/ChildPair
                  keyed-component idx $ comp-message message
              space-x 0
          :examples $ []
          :schema $ quote $ Fn (List app.schema/Message) (-> respo.schema/Component)
        'comp-sentence $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-sentence (text)
            keyed->
              {} $ :style $ {} (:width |100%) (:word-break |break-all) (:line-height |16px)
              map-indexed (split text |)
                fn (idx char)
                  hint-fn $ Fn Number String $ -> respo.schema/ChildPair
                  keyed-component idx $ comp-char $ get-char-code char
          :examples $ []
          :schema $ quote $ Fn String (-> respo.schema/Component)
        'event-key $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn event-key (event)
            decode-map-as (:key event) 'String
          :examples $ []
          :schema $ quote $ Fn respo.schema/RespoEvent (-> String)
        'event-value $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn event-value (event)
            decode-map-as (:value event) 'String
          :examples $ []
          :schema $ quote $ Fn respo.schema/RespoEvent (-> String)
        'generate-color $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn generate-color (name)
            decode-map-as (gen-color name) 'String
          :examples $ []
          :schema $ quote $ Fn String (-> String) (:features :js-ffi)
        'pad9 $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn pad9 (acc)
            if
              < (.len acc) 18
              recur $ concat ([] 0) acc
              , acc
          :examples $ []
          :schema $ quote $ Fn (List Number)
            -> $ List Number
        'request-fullscreen! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn request-fullscreen! ()
            match (query-selector |body)
              (:some body) (element-request-fullscreen! body)
              (:none) &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'scroll-last! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn scroll-last! ()
            match (query-selector "|#message-area > :last-child")
              (:some element)
                .!scrollIntoViewIfNeeded $ js-cast element 'app.comp.container/ScrollHost
              (:none) (println "|no message target")
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'scroll-view! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn scroll-view! () (set-timeout! scroll-last! 100) &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'turn-codes $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn turn-codes (acc code)
            if (= 0 code) (pad9 acc)
              recur
                conj acc $ &number:rem code 2
                floor $ * 0.5 code
          :examples $ []
          :schema $ quote $ Fn (List Number) Number
            -> $ List Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require (respo-ui.core :as ui)
            respo.core :refer $ defcomp <> >> div textarea span keyed-> keyed-component
            respo.comp.space :refer $ space-x
            reel.comp.reel :refer $ comp-typed-reel
            app.config :refer $ dev?
            respo.util.format :refer $ hsl
            |string-to-color :default gen-color
            app.schema :as app.schema
            js-ffi.browser :refer $ element-focus! query-selector random set-timeout! element-request-fullscreen!
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'cdn? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def cdn?
            = |true $ .unwrap-or (get-env |cdn) |false
          :examples $ []
          :schema $ quote Bool
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev? true
          :examples $ []
          :schema $ quote Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} (:dev-ui |http://localhost:8100/main-fonts.css) (:release-ui |http://cdn.tiye.me/favored-fonts/main-fonts.css) (:cdn-url |http://cdn.tiye.me/calcit-workflow/) (:title |Calcit) (:icon |http://cdn.tiye.me/logo/mvc-works.png) (:storage-key |workflow)
          :examples $ []
          :schema $ quote $ Map Tag String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel (typed/new-reel app.schema/store)
          :examples $ []
          :schema $ quote $ Ref (reel.typed/State app.schema/Op app.schema/Store)
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when config/dev? $ println |Dispatch: op
            dispatch-resolved! op
          :examples $ []
          :schema $ quote $ Fn app.schema/Op (-> Unit) (:features :js-ffi)
        'dispatch-resolved! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch-resolved! (op)
            reset! *reel $ match op
              (reel.typed/Control control) (typed/apply-control updater @*reel control)
              (app.schema/Op action)
                typed/record-op updater @*reel action (generate-id!) (shared/now-ms)
            , &unit
          :examples $ []
          :schema $ quote $ Fn app.schema/ResolvedOp (-> Unit) (:features :js-ffi)
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! () (load-console-formatter!)
            println "|Running mode:" $ if config/dev? |dev |release
            render-app!
            add-watch! *reel :changes $ fn (reel previous) (render-app!)
            listen-devtools! |a on-control!
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
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target
            narrow-element $ .unwrap $ query-selector |.app
          :examples $ []
          :schema $ quote respo.dom/DomElement
        'on-control! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-control! (control) (dispatch-resolved! control)
          :examples $ []
          :schema $ quote $ Fn reel.typed/Control (-> Unit) (:features :js-ffi)
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            storage-set!
              .unwrap $ get config/site :storage-key
              format-cirru-edn $ &struct:to-map $ @*reel :store
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
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
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render-with! mount-target
              fn () $ comp-container @*reel on-control!
              , dispatch!
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'repeat! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn repeat! (duration callback)
            set-interval! callback $ * 1000 duration
          :examples $ []
          :schema $ quote $ Fn Number
            Fn $ -> Unit
            -> Number
        'snippets $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn snippets () (println config/cdn?)
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            respo.core :refer $ render-with! clear-cache!
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
            :cursor $ List respo.schema/CoordKey
            :data $ Option app.schema/InputData
          :examples $ []
          :schema $ quote StructDef
        'InputData $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct InputData (:content String)
          :examples $ []
          :schema $ quote StructDef
        'Message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Message (:token String) (:message String)
          :examples $ []
          :schema $ quote StructDef
        'Op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Op
            :states (List respo.schema/CoordKey) Dynamic
            :hydrate-storage app.schema/Store
            :message String
            :rename String
          :examples $ []
          :schema $ quote EnumDef
        'ResolvedOp $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion ResolvedOp Op reel.typed/Control
          :examples $ []
          :schema $ quote UnionDef
        'Store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Store
            :states $ Map Dynamic Dynamic
            :token String
            :messages $ List app.schema/Message
          :examples $ []
          :schema $ quote StructDef
        'read-input-branch $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-input-branch (states)
            InputBranch :cursor
              decode-map-as
                .unwrap $ get states :cursor
                List respo.schema/CoordKey
              , :data $ match (get states :data)
                (:none) (Option :none)
                (:some data)
                  Option :some $ decode-map-as
                    if (struct? data) (&struct:to-map data) data
                    , 'app.schema/InputData
          :examples $ []
          :schema $ quote $ Fn (Map Dynamic Dynamic) (-> app.schema/InputBranch)
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            Store :states
              {} $ :cursor $ []
              , :token |TODO :messages $ []
          :examples $ []
          :schema $ quote app.schema/Store
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
                  Map Dynamic Dynamic
              (:hydrate-storage data) data
              (:message message)
                assoc store :messages $ conj (store :messages)
                  app.schema/Message :token (store :token) :message message
              (:rename token) (assoc store :token token)
          :examples $ []
          :schema $ quote $ Fn app.schema/Store app.schema/Op String Number (-> app.schema/Store)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require $ app.schema :as app.schema
