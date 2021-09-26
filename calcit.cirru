
{}
  :configs $ {} (:reload-fn |app.main/reload!) (:port 6001) (:output |src) (:compact-output? true) (:storage-key |calcit.cirru) (:version |0.0.1)
    :modules $ [] |respo.calcit/compact.cirru |lilac/compact.cirru |memof/compact.cirru |respo-ui.calcit/compact.cirru |respo-markdown.calcit/compact.cirru |reel.calcit/compact.cirru
    :init-fn |app.main/main!
    :extension |.cljs
  :ir $ {} (:package |app)
    :files $ {}
      |app.comp.container $ {}
        :defs $ {}
          |comp-container $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |comp-container) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |reel) (:type :leaf) (:at 1507461830530) (:by |root)
                :type :expr
                :at 1499755354983
              |v $ {}
                :data $ {}
                  |D $ {} (:text |let) (:type :leaf) (:at 1507461833421) (:by |root)
                  |L $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |store) (:type :leaf) (:at 1507461835738) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:store) (:type :leaf) (:at 1507461837276) (:by |root)
                              |j $ {} (:text |reel) (:type :leaf) (:at 1507461838285) (:by |root)
                            :type :expr
                            :at 1507461836110
                            :by |root
                        :type :expr
                        :at 1507461834650
                        :by |root
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |states) (:type :leaf) (:at 1509727105928) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:states) (:type :leaf) (:at 1509727107223) (:by |root)
                              |j $ {} (:text |store) (:type :leaf) (:at 1509727108033) (:by |root)
                            :type :expr
                            :at 1509727106316
                            :by |root
                        :type :expr
                        :at 1509727104820
                        :by |root
                    :type :expr
                    :at 1507461834351
                    :by |root
                  |T $ {}
                    :data $ {}
                      |T $ {} (:text |div) (:type :leaf) (:at 1499755354983) (:by |root)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1499755354983) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:style) (:type :leaf) (:at 1499755354983) (:by |root)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |merge) (:type :leaf) (:at 1499755354983) (:by |root)
                                  |j $ {} (:text |ui/global) (:type :leaf) (:at 1521129814235) (:by |root)
                                  |n $ {} (:text |ui/fullscreen) (:type :leaf) (:at 1622959239734) (:by |rJG4IHzWf)
                                  |r $ {} (:text |ui/column) (:type :leaf) (:at 1622959200524) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1499755354983
                            :type :expr
                            :at 1499755354983
                        :type :expr
                        :at 1499755354983
                      |k $ {}
                        :data $ {}
                          |D $ {} (:text |memof-call) (:type :leaf) (:at 1622961723795) (:by |rJG4IHzWf)
                          |T $ {} (:text |comp-header) (:type :leaf) (:at 1622961280752) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1622961277995
                        :by |rJG4IHzWf
                      |l $ {}
                        :data $ {}
                          |D $ {} (:text |memof-call) (:type :leaf) (:at 1622961694682) (:by |rJG4IHzWf)
                          |T $ {} (:text |comp-messages) (:type :leaf) (:at 1622961670779) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:messages) (:type :leaf) (:at 1622961673700) (:by |rJG4IHzWf)
                              |j $ {} (:text |store) (:type :leaf) (:at 1622961674381) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1622961672877
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1622961667180
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |memof-call) (:type :leaf) (:at 1622961733132) (:by |rJG4IHzWf)
                          |j $ {} (:text |comp-input) (:type :leaf) (:at 1622961735478) (:by |rJG4IHzWf)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |>>) (:type :leaf) (:at 1622961740463) (:by |rJG4IHzWf)
                              |j $ {} (:text |states) (:type :leaf) (:at 1622961741274) (:by |rJG4IHzWf)
                              |r $ {} (:text |:input) (:type :leaf) (:at 1622961743019) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1622961740055
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1622961729082
                        :by |rJG4IHzWf
                      |x $ {}
                        :data $ {}
                          |D $ {} (:text |when) (:type :leaf) (:at 1521954057510) (:by |root)
                          |L $ {} (:text |dev?) (:type :leaf) (:at 1521954059290) (:by |root)
                          |T $ {}
                            :data $ {}
                              |T $ {} (:text |comp-reel) (:type :leaf) (:at 1507461815046) (:by |root)
                              |b $ {}
                                :data $ {}
                                  |D $ {} (:text |>>) (:type :leaf) (:at 1584780611347) (:by |rJG4IHzWf)
                                  |T $ {} (:text |states) (:type :leaf) (:at 1509727101297) (:by |root)
                                  |j $ {} (:text |:reel) (:type :leaf) (:at 1584780613268) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1584780610581
                                :by |rJG4IHzWf
                              |j $ {} (:text |reel) (:type :leaf) (:at 1507461840459) (:by |root)
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1507461841342) (:by |root)
                                :type :expr
                                :at 1507461840980
                                :by |root
                            :type :expr
                            :at 1507461809635
                            :by |root
                        :type :expr
                        :at 1521954055333
                        :by |root
                    :type :expr
                    :at 1499755354983
                :type :expr
                :at 1507461832154
                :by |root
            :type :expr
            :at 1499755354983
          |pad9 $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1622961554758) (:by |rJG4IHzWf)
              |j $ {} (:text |pad9) (:type :leaf) (:at 1622961554758) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |acc) (:type :leaf) (:at 1622961554758) (:by |rJG4IHzWf)
                :type :expr
                :at 1622961554758
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |if) (:type :leaf) (:at 1622961557033) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |<) (:type :leaf) (:at 1622961570749) (:by |rJG4IHzWf)
                      |b $ {}
                        :data $ {}
                          |T $ {} (:text |count) (:type :leaf) (:at 1622961573585) (:by |rJG4IHzWf)
                          |j $ {} (:text |acc) (:type :leaf) (:at 1622961574101) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1622961572832
                        :by |rJG4IHzWf
                      |j $ {} (:text |18) (:type :leaf) (:at 1622961859447) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1622961570363
                    :by |rJG4IHzWf
                  |r $ {}
                    :data $ {}
                      |D $ {} (:text |recur) (:type :leaf) (:at 1622961581596) (:by |rJG4IHzWf)
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |concat) (:type :leaf) (:at 1622961576454) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |[]) (:type :leaf) (:at 1622961577454) (:by |rJG4IHzWf)
                              |j $ {} (:text |0) (:type :leaf) (:at 1622961578116) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1622961577310
                            :by |rJG4IHzWf
                          |r $ {} (:text |acc) (:type :leaf) (:at 1622961579331) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1622961574995
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1622961580680
                    :by |rJG4IHzWf
                  |v $ {} (:text |acc) (:type :leaf) (:at 1622961604866) (:by |rJG4IHzWf)
                :type :expr
                :at 1622961556671
                :by |rJG4IHzWf
            :type :expr
            :at 1622961554758
            :by |rJG4IHzWf
          |comp-char $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1622960174947) (:by |rJG4IHzWf)
              |j $ {} (:text |comp-char) (:type :leaf) (:at 1622960173022) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |code) (:type :leaf) (:at 1622960176968) (:by |rJG4IHzWf)
                :type :expr
                :at 1622960173022
                :by |rJG4IHzWf
              |x $ {}
                :data $ {}
                  |D $ {} (:text |let) (:type :leaf) (:at 1622961959850) (:by |rJG4IHzWf)
                  |L $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |points) (:type :leaf) (:at 1622961966680) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |->) (:type :leaf) (:at 1622961967130) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |turn-codes) (:type :leaf) (:at 1622961967130) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |[]) (:type :leaf) (:at 1622961967130) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1622961967130
                                    :by |rJG4IHzWf
                                  |r $ {} (:text |code) (:type :leaf) (:at 1622961967130) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1622961967130
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |.section-by) (:type :leaf) (:at 1622961967130) (:by |rJG4IHzWf)
                                  |j $ {} (:text |2) (:type :leaf) (:at 1622961967130) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1622961967130
                                :by |rJG4IHzWf
                              |v $ {}
                                :data $ {}
                                  |T $ {} (:text |.map) (:type :leaf) (:at 1622961967130) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |fn) (:type :leaf) (:at 1622961967130) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |pair) (:type :leaf) (:at 1622961967130) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1622961967130
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |+) (:type :leaf) (:at 1622961967130) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |*) (:type :leaf) (:at 1622961967130) (:by |rJG4IHzWf)
                                              |j $ {} (:text |2) (:type :leaf) (:at 1622961967130) (:by |rJG4IHzWf)
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |first) (:type :leaf) (:at 1622961967130) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |pair) (:type :leaf) (:at 1622961967130) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1622961967130
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1622961967130
                                            :by |rJG4IHzWf
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |last) (:type :leaf) (:at 1622961967130) (:by |rJG4IHzWf)
                                              |j $ {} (:text |pair) (:type :leaf) (:at 1622961967130) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1622961967130
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1622961967130
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1622961967130
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1622961967130
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1622961967130
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1622961960241
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1622961960092
                    :by |rJG4IHzWf
                  |T $ {}
                    :data $ {}
                      |T $ {} (:text |div) (:type :leaf) (:at 1622961953864) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1622961970867) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:style) (:type :leaf) (:at 1622962070831) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1622962073750) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:display) (:type :leaf) (:at 1622962074970) (:by |rJG4IHzWf)
                                      |j $ {} (:text |:inline-block) (:type :leaf) (:at 1622962077626) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1622962074028
                                    :by |rJG4IHzWf
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |:width) (:type :leaf) (:at 1622962150371) (:by |rJG4IHzWf)
                                      |j $ {} (:text |18) (:type :leaf) (:at 1622962151005) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1622962147567
                                    :by |rJG4IHzWf
                                  |v $ {}
                                    :data $ {}
                                      |T $ {} (:text |:line-height) (:type :leaf) (:at 1622962167946) (:by |rJG4IHzWf)
                                      |j $ {} (:text "|\"6px") (:type :leaf) (:at 1622962174655) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1622962163411
                                    :by |rJG4IHzWf
                                  |x $ {}
                                    :data $ {}
                                      |T $ {} (:text |:margin-right) (:type :leaf) (:at 1622962194313) (:by |rJG4IHzWf)
                                      |j $ {} (:text |4) (:type :leaf) (:at 1622962597991) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1622962191083
                                    :by |rJG4IHzWf
                                  |y $ {}
                                    :data $ {}
                                      |T $ {} (:text |:box-shadow) (:type :leaf) (:at 1622962530332) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |str) (:type :leaf) (:at 1622962530332) (:by |rJG4IHzWf)
                                          |j $ {} (:text "|\"0 0 2px ") (:type :leaf) (:at 1622962542387) (:by |rJG4IHzWf)
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |hsl) (:type :leaf) (:at 1622962530332) (:by |rJG4IHzWf)
                                              |j $ {} (:text |0) (:type :leaf) (:at 1622962530332) (:by |rJG4IHzWf)
                                              |r $ {} (:text |0) (:type :leaf) (:at 1622962530332) (:by |rJG4IHzWf)
                                              |v $ {} (:text |80) (:type :leaf) (:at 1622962530332) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1622962530332
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1622962530332
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1622962530332
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1622962071029
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1622962069272
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1622961970219
                        :by |rJG4IHzWf
                      |n $ {} (:text |&) (:type :leaf) (:at 1622961975901) (:by |rJG4IHzWf)
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |->) (:type :leaf) (:at 1622961972190) (:by |rJG4IHzWf)
                          |j $ {} (:text |points) (:type :leaf) (:at 1622961973443) (:by |rJG4IHzWf)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |map) (:type :leaf) (:at 1622961977606) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |fn) (:type :leaf) (:at 1622961978296) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |point) (:type :leaf) (:at 1622961983520) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1622961978968
                                    :by |rJG4IHzWf
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |div) (:type :leaf) (:at 1622961994080) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |{}) (:type :leaf) (:at 1622961994686) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:class-name) (:type :leaf) (:at 1622961999596) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |str) (:type :leaf) (:at 1622962002325) (:by |rJG4IHzWf)
                                                  |j $ {} (:text "|\"cell cell-") (:type :leaf) (:at 1622962020254) (:by |rJG4IHzWf)
                                                  |r $ {} (:text |point) (:type :leaf) (:at 1622962010118) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1622961999875
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1622961995886
                                            :by |rJG4IHzWf
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |:style) (:type :leaf) (:at 1622962031780) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |{}) (:type :leaf) (:at 1622962032368) (:by |rJG4IHzWf)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |:width) (:type :leaf) (:at 1622962034882) (:by |rJG4IHzWf)
                                                      |j $ {} (:text |6) (:type :leaf) (:at 1622962036213) (:by |rJG4IHzWf)
                                                    :type :expr
                                                    :at 1622962033173
                                                    :by |rJG4IHzWf
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |:height) (:type :leaf) (:at 1622962038508) (:by |rJG4IHzWf)
                                                      |j $ {} (:text |6) (:type :leaf) (:at 1622962039219) (:by |rJG4IHzWf)
                                                    :type :expr
                                                    :at 1622962037453
                                                    :by |rJG4IHzWf
                                                  |v $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |:display) (:type :leaf) (:at 1622962048233) (:by |rJG4IHzWf)
                                                      |j $ {} (:text |:inline-block) (:type :leaf) (:at 1622962050356) (:by |rJG4IHzWf)
                                                    :type :expr
                                                    :at 1622962046632
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1622962032041
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1622962029430
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1622961994309
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1622961988679
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1622961977967
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1622961977196
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1622961974254
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1622961944980
                    :by |rJG4IHzWf
                :type :expr
                :at 1622961959312
                :by |rJG4IHzWf
            :type :expr
            :at 1622960173022
            :by |rJG4IHzWf
          |comp-input $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1622961749251) (:by |rJG4IHzWf)
              |j $ {} (:text |comp-input) (:type :leaf) (:at 1622961747223) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |states) (:type :leaf) (:at 1622961754963) (:by |rJG4IHzWf)
                :type :expr
                :at 1622961747223
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |D $ {} (:text |let) (:type :leaf) (:at 1622961769356) (:by |rJG4IHzWf)
                  |L $ {}
                    :data $ {}
                      |D $ {}
                        :data $ {}
                          |T $ {} (:text |cursor) (:type :leaf) (:at 1622961773028) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:cursor) (:type :leaf) (:at 1622961775098) (:by |rJG4IHzWf)
                              |j $ {} (:text |states) (:type :leaf) (:at 1622961775861) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1622961773223
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1622961771925
                        :by |rJG4IHzWf
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |state) (:type :leaf) (:at 1622961769905) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |either) (:type :leaf) (:at 1622961769905) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:data) (:type :leaf) (:at 1622961769905) (:by |rJG4IHzWf)
                                  |j $ {} (:text |states) (:type :leaf) (:at 1622961769905) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1622961769905
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1622961769905) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:content) (:type :leaf) (:at 1622961769905) (:by |rJG4IHzWf)
                                      |j $ {} (:text "|\"") (:type :leaf) (:at 1622961769905) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1622961769905
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1622961769905
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1622961769905
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1622961769905
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1622961770717
                    :by |rJG4IHzWf
                  |T $ {}
                    :data $ {}
                      |T $ {} (:text |div) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:style) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |merge) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                  |j $ {} (:text |ui/row-middle) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:padding) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                          |j $ {} (:text "|\"6px 4px") (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1622961750930
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |:background-color) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |hsl) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                              |j $ {} (:text |0) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                              |r $ {} (:text |0) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                              |v $ {} (:text |97) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1622961750930
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1622961750930
                                        :by |rJG4IHzWf
                                      |v $ {}
                                        :data $ {}
                                          |T $ {} (:text |:border-top) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |str) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                              |j $ {} (:text "|\"1px solid ") (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |hsl) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |0) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                                  |r $ {} (:text |0) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                                  |v $ {} (:text |90) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1622961750930
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1622961750930
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1622961750930
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1622961750930
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1622961750930
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1622961750930
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1622961750930
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |textarea) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |xT $ {}
                                :data $ {}
                                  |T $ {} (:text |:autofocus) (:type :leaf) (:at 1622963048459) (:by |rJG4IHzWf)
                                  |j $ {} (:text |true) (:type :leaf) (:at 1622963041186) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1622963037199
                                :by |rJG4IHzWf
                              |T $ {} (:text |{}) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:value) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:content) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                      |j $ {} (:text |state) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1622961750930
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1622961750930
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:placeholder) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                  |j $ {} (:text "|\"Message...") (:type :leaf) (:at 1632659768524) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1622961750930
                                :by |rJG4IHzWf
                              |v $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |merge) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                      |j $ {} (:text |ui/textarea) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                      |r $ {} (:text |ui/expand) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                      |v $ {}
                                        :data $ {}
                                          |T $ {} (:text |{}) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:height) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                              |j $ {} (:text |40) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1622961750930
                                            :by |rJG4IHzWf
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |:line-height) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                              |j $ {} (:text "|\"24px") (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1622961750930
                                            :by |rJG4IHzWf
                                          |v $ {}
                                            :data $ {}
                                              |T $ {} (:text |:border) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                              |j $ {} (:text |:none) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1622961750930
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1622961750930
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1622961750930
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1622961750930
                                :by |rJG4IHzWf
                              |x $ {}
                                :data $ {}
                                  |T $ {} (:text |:on-input) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |fn) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |e) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                          |j $ {} (:text |d!) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1622961750930
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |d!) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                          |j $ {} (:text |cursor) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |assoc) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                              |j $ {} (:text |state) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                              |r $ {} (:text |:content) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                              |v $ {}
                                                :data $ {}
                                                  |T $ {} (:text |:value) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |e) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1622961750930
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1622961750930
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1622961750930
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1622961750930
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1622961750930
                                :by |rJG4IHzWf
                              |y $ {}
                                :data $ {}
                                  |T $ {} (:text |:on-keydown) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |fn) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |e) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                          |j $ {} (:text |d!) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1622961750930
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |let) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {}
                                                :data $ {}
                                                  |T $ {} (:text |event) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |:event) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                                      |j $ {} (:text |e) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                                    :type :expr
                                                    :at 1622961750930
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1622961750930
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1622961750930
                                            :by |rJG4IHzWf
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |when) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |D $ {} (:text |and) (:type :leaf) (:at 1632656209884) (:by |rJG4IHzWf)
                                                  |T $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |=) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                                      |j $ {} (:text "|\"Enter") (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                                      |r $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |.-key) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                                          |j $ {} (:text |event) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1622961750930
                                                        :by |rJG4IHzWf
                                                    :type :expr
                                                    :at 1622961750930
                                                    :by |rJG4IHzWf
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632656210958) (:text |not)
                                                      |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1632656210958)
                                                        :data $ {}
                                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632656210958) (:text |.blank?)
                                                          |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1632656210958)
                                                            :data $ {}
                                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632656210958) (:text |:content)
                                                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632656210958) (:text |state)
                                                    :type :expr
                                                    :at 1632656210958
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1632656208893
                                                :by |rJG4IHzWf
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |.!preventDefault) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |:event) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                                      |j $ {} (:text |e) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                                    :type :expr
                                                    :at 1622961750930
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1622961750930
                                                :by |rJG4IHzWf
                                              |v $ {}
                                                :data $ {}
                                                  |T $ {} (:text |d!) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |:message) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632656233291) (:text |:content)
                                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632656233291) (:text |state)
                                                    :type :expr
                                                    :at 1632656233291
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1622961750930
                                                :by |rJG4IHzWf
                                              |x $ {}
                                                :data $ {}
                                                  |T $ {} (:text |d!) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |cursor) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |assoc) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                                      |j $ {} (:text |state) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                                      |r $ {} (:text |:content) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                                      |v $ {} (:text "|\"") (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                                    :type :expr
                                                    :at 1622961750930
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1622961750930
                                                :by |rJG4IHzWf
                                              |y $ {}
                                                :data $ {}
                                                  |T $ {} (:text |scroll-view!) (:type :leaf) (:at 1622962753034) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1622962748262
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1622961750930
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1622961750930
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1622961750930
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1622961750930
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1622961750930
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1622961750930
                        :by |rJG4IHzWf
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |=<) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                          |j $ {} (:text |6) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                          |r $ {} (:text |nil) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1622961750930
                        :by |rJG4IHzWf
                      |x $ {}
                        :data $ {}
                          |T $ {} (:text |div) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:border) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |str) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                              |j $ {} (:text "|\"2px solid ") (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |hsl) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |200) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                                  |r $ {} (:text |80) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                                  |v $ {} (:text |60) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1622961750930
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1622961750930
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1622961750930
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |:width) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                          |j $ {} (:text |28) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1622961750930
                                        :by |rJG4IHzWf
                                      |v $ {}
                                        :data $ {}
                                          |T $ {} (:text |:height) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                          |j $ {} (:text |28) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1622961750930
                                        :by |rJG4IHzWf
                                      |x $ {}
                                        :data $ {}
                                          |T $ {} (:text |:border-radius) (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                          |j $ {} (:text "|\"50%") (:type :leaf) (:at 1622961750930) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1622961750930
                                        :by |rJG4IHzWf
                                      |y $ {}
                                        :data $ {}
                                          |T $ {} (:text |:cursor) (:type :leaf) (:at 1632656226006) (:by |rJG4IHzWf)
                                          |j $ {} (:text |:pointer) (:type :leaf) (:at 1632656227822) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1632656221115
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1622961750930
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1622961750930
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:on-click) (:type :leaf) (:at 1632656133702) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |fn) (:type :leaf) (:at 1632656134343) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |e) (:type :leaf) (:at 1632656134956) (:by |rJG4IHzWf)
                                          |j $ {} (:text |d!) (:type :leaf) (:at 1632656135433) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1632656134701
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632656137169) (:text |let)
                                          |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1632656137169)
                                            :data $ {}
                                              |T $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1632656137169)
                                                :data $ {}
                                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632656137169) (:text |event)
                                                  |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1632656137169)
                                                    :data $ {}
                                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632656137169) (:text |:event)
                                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632656137169) (:text |e)
                                          |r $ {}
                                            :data $ {}
                                              |xT $ {}
                                                :data $ {}
                                                  |D $ {} (:text |.!focus) (:type :leaf) (:at 1632659646597) (:by |rJG4IHzWf)
                                                  |T $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |js/document.querySelector) (:type :leaf) (:at 1632659635232) (:by |rJG4IHzWf)
                                                      |j $ {} (:text "|\"textarea") (:type :leaf) (:at 1632659637712) (:by |rJG4IHzWf)
                                                    :type :expr
                                                    :at 1632659623377
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1632659638191
                                                :by |rJG4IHzWf
                                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632656137169) (:text |when)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |not) (:type :leaf) (:at 1632656149966) (:by |rJG4IHzWf)
                                                  |f $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |.blank?) (:type :leaf) (:at 1632656154750) (:by |rJG4IHzWf)
                                                      |j $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |:content) (:type :leaf) (:at 1632656161504) (:by |rJG4IHzWf)
                                                          |j $ {} (:text |state) (:type :leaf) (:at 1632656162359) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1632656160437
                                                        :by |rJG4IHzWf
                                                    :type :expr
                                                    :at 1632656150525
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1632656137169
                                                :by |rJG4IHzWf
                                              |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1632656137169)
                                                :data $ {}
                                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632656137169) (:text |.!preventDefault)
                                                  |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1632656137169)
                                                    :data $ {}
                                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632656137169) (:text |:event)
                                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632656137169) (:text |e)
                                              |v $ {}
                                                :data $ {}
                                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632656137169) (:text |d!)
                                                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632656137169) (:text |:message)
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |:content) (:type :leaf) (:at 1632656193851) (:by |rJG4IHzWf)
                                                      |j $ {} (:text |state) (:type :leaf) (:at 1632656194626) (:by |rJG4IHzWf)
                                                    :type :expr
                                                    :at 1632656191440
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1632656137169
                                                :by |rJG4IHzWf
                                              |x $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1632656137169)
                                                :data $ {}
                                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632656137169) (:text |d!)
                                                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632656137169) (:text |cursor)
                                                  |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1632656137169)
                                                    :data $ {}
                                                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632656137169) (:text |assoc)
                                                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632656137169) (:text |state)
                                                      |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632656137169) (:text |:content)
                                                      |v $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632656137169) (:text "|\"")
                                              |y $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1632656137169)
                                                :data $ {}
                                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632656137169) (:text |scroll-view!)
                                            :type :expr
                                            :at 1632656137169
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1632656137169
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1632656134011
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1632656131453
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1622961750930
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1622961750930
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1622961750930
                    :by |rJG4IHzWf
                :type :expr
                :at 1622961768364
                :by |rJG4IHzWf
            :type :expr
            :at 1622961747223
            :by |rJG4IHzWf
          |comp-messages $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1622961687980) (:by |rJG4IHzWf)
              |j $ {} (:text |comp-messages) (:type :leaf) (:at 1622961676109) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |ms) (:type :leaf) (:at 1622961681247) (:by |rJG4IHzWf)
                :type :expr
                :at 1622961676109
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |div) (:type :leaf) (:at 1622961678987) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |{}) (:type :leaf) (:at 1622961678987) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:style) (:type :leaf) (:at 1622961678987) (:by |rJG4IHzWf)
                          |j $ {} (:text |ui/expand) (:type :leaf) (:at 1622961678987) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1622961678987
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1622961678987
                    :by |rJG4IHzWf
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |list->) (:type :leaf) (:at 1622961678987) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1622961678987) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:id) (:type :leaf) (:at 1622962719842) (:by |rJG4IHzWf)
                              |j $ {} (:text "|\"message-area") (:type :leaf) (:at 1622962726267) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1622962718440
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1622961678987
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |->) (:type :leaf) (:at 1622961678987) (:by |rJG4IHzWf)
                          |f $ {} (:text |ms) (:type :leaf) (:at 1622961684246) (:by |rJG4IHzWf)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |either) (:type :leaf) (:at 1622961678987) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1622961678987) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1622961678987
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1622961678987
                            :by |rJG4IHzWf
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |.map-indexed) (:type :leaf) (:at 1622961678987) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |fn) (:type :leaf) (:at 1622961678987) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |idx) (:type :leaf) (:at 1622961678987) (:by |rJG4IHzWf)
                                      |j $ {} (:text |m) (:type :leaf) (:at 1622961678987) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1622961678987
                                    :by |rJG4IHzWf
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |[]) (:type :leaf) (:at 1622961678987) (:by |rJG4IHzWf)
                                      |j $ {} (:text |idx) (:type :leaf) (:at 1622961678987) (:by |rJG4IHzWf)
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |comp-message) (:type :leaf) (:at 1622961678987) (:by |rJG4IHzWf)
                                          |j $ {} (:text |m) (:type :leaf) (:at 1622961678987) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1622961678987
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1622961678987
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1622961678987
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1622961678987
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1622961678987
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1622961678987
                    :by |rJG4IHzWf
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |=<) (:type :leaf) (:at 1622961678987) (:by |rJG4IHzWf)
                      |j $ {} (:text |nil) (:type :leaf) (:at 1622961678987) (:by |rJG4IHzWf)
                      |r $ {} (:text |80) (:type :leaf) (:at 1622961678987) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1622961678987
                    :by |rJG4IHzWf
                :type :expr
                :at 1622961678987
                :by |rJG4IHzWf
            :type :expr
            :at 1622961676109
            :by |rJG4IHzWf
          |scroll-view! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1622962753702) (:by |rJG4IHzWf)
              |j $ {} (:text |scroll-view!) (:type :leaf) (:at 1622962753702) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1622962753702
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |js/setTimeout) (:type :leaf) (:at 1622962761338) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |fn) (:type :leaf) (:at 1622962761953) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                        :type :expr
                        :at 1622962762160
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |let) (:type :leaf) (:at 1622962768160) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |target) (:type :leaf) (:at 1622962770740) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |js/document.querySelector) (:type :leaf) (:at 1622962781824) (:by |rJG4IHzWf)
                                      |j $ {} (:text "|\"#message-area") (:type :leaf) (:at 1622962784743) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1622962770970
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1622962769863
                                :by |rJG4IHzWf
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |last-child) (:type :leaf) (:at 1622962844917) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |if) (:type :leaf) (:at 1622962847451) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |some?) (:type :leaf) (:at 1622962848936) (:by |rJG4IHzWf)
                                          |j $ {} (:text |target) (:type :leaf) (:at 1622962849836) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1622962847635
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |.-lastElementChild) (:type :leaf) (:at 1622962854155) (:by |rJG4IHzWf)
                                          |j $ {} (:text |target) (:type :leaf) (:at 1622962856611) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1622962850921
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1622962845552
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1622962841645
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1622962769729
                            :by |rJG4IHzWf
                          |n $ {}
                            :data $ {}
                              |T $ {} (:text |if) (:type :leaf) (:at 1622962861334) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |D $ {} (:text |some?) (:type :leaf) (:at 1622962865596) (:by |rJG4IHzWf)
                                  |T $ {} (:text |last-child) (:type :leaf) (:at 1622962864218) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1622962861528
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |D $ {} (:text |.!scrollIntoViewIfNeeded) (:type :leaf) (:at 1622962874627) (:by |rJG4IHzWf)
                                  |T $ {} (:text |last-child) (:type :leaf) (:at 1622962866667) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1622962866921
                                :by |rJG4IHzWf
                              |v $ {}
                                :data $ {}
                                  |T $ {} (:text |js/console.warn) (:type :leaf) (:at 1622962879912) (:by |rJG4IHzWf)
                                  |j $ {} (:text "|\"no target") (:type :leaf) (:at 1622962882140) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1622962877339
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1622962860112
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1622962768972
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1622962761678
                    :by |rJG4IHzWf
                  |r $ {} (:text |100) (:type :leaf) (:at 1622962765736) (:by |rJG4IHzWf)
                :type :expr
                :at 1622962754553
                :by |rJG4IHzWf
            :type :expr
            :at 1622962753702
            :by |rJG4IHzWf
          |comp-header $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1622961283520) (:by |rJG4IHzWf)
              |j $ {} (:text |comp-header) (:type :leaf) (:at 1622961281366) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1622961281366
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |div) (:type :leaf) (:at 1622961284919) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |{}) (:type :leaf) (:at 1622961284919) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:style) (:type :leaf) (:at 1622961289035) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |D $ {} (:text |merge) (:type :leaf) (:at 1622961408681) (:by |rJG4IHzWf)
                              |L $ {} (:text |ui/row-parted) (:type :leaf) (:at 1622961413653) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1622961290230) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:padding) (:type :leaf) (:at 1622961295533) (:by |rJG4IHzWf)
                                      |j $ {} (:text "|\"4px 6px") (:type :leaf) (:at 1622961327229) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1622961290878
                                    :by |rJG4IHzWf
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |:font-weight) (:type :leaf) (:at 1622961303556) (:by |rJG4IHzWf)
                                      |j $ {} (:text |:bold) (:type :leaf) (:at 1622961305581) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1622961301149
                                    :by |rJG4IHzWf
                                  |v $ {}
                                    :data $ {}
                                      |T $ {} (:text |:font-size) (:type :leaf) (:at 1622961317378) (:by |rJG4IHzWf)
                                      |j $ {} (:text |16) (:type :leaf) (:at 1622961318089) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1622961314444
                                    :by |rJG4IHzWf
                                  |x $ {}
                                    :data $ {}
                                      |T $ {} (:text |:background-color) (:type :leaf) (:at 1622961337826) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |hsl) (:type :leaf) (:at 1622961338910) (:by |rJG4IHzWf)
                                          |j $ {} (:text |0) (:type :leaf) (:at 1622961339281) (:by |rJG4IHzWf)
                                          |r $ {} (:text |0) (:type :leaf) (:at 1622961339567) (:by |rJG4IHzWf)
                                          |v $ {} (:text |97) (:type :leaf) (:at 1622961347743) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1622961338113
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1622961332227
                                    :by |rJG4IHzWf
                                  |y $ {}
                                    :data $ {}
                                      |T $ {} (:text |:border-bottom) (:type :leaf) (:at 1622961354893) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |str) (:type :leaf) (:at 1622961356080) (:by |rJG4IHzWf)
                                          |j $ {} (:text "|\"1px solid ") (:type :leaf) (:at 1622961358957) (:by |rJG4IHzWf)
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |hsl) (:type :leaf) (:at 1622961360462) (:by |rJG4IHzWf)
                                              |j $ {} (:text |0) (:type :leaf) (:at 1622961361250) (:by |rJG4IHzWf)
                                              |r $ {} (:text |0) (:type :leaf) (:at 1622961361535) (:by |rJG4IHzWf)
                                              |v $ {} (:text |90) (:type :leaf) (:at 1622961362226) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1622961360123
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1622961355552
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1622961350029
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1622961289287
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1622961402748
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1622961287554
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1622961284919
                    :by |rJG4IHzWf
                  |o $ {}
                    :data $ {}
                      |T $ {} (:text |span) (:type :leaf) (:at 1632654556516) (:by |rJG4IHzWf)
                      |j $ {} (:text |nil) (:type :leaf) (:at 1632654558353) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1632654555853
                    :by |rJG4IHzWf
                  |t $ {}
                    :data $ {}
                      |D $ {} (:text |span) (:type :leaf) (:at 1632654594474) (:by |rJG4IHzWf)
                      |L $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1632654595106) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:on-click) (:type :leaf) (:at 1632654598221) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |fn) (:type :leaf) (:at 1632654598764) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |e) (:type :leaf) (:at 1632654599242) (:by |rJG4IHzWf)
                                      |j $ {} (:text |d!) (:type :leaf) (:at 1632654600296) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1632654599020
                                    :by |rJG4IHzWf
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |js/document.body.requestFullscreen) (:type :leaf) (:at 1632654611055) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1632654601035
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1632654598504
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1632654596452
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1632654594773
                        :by |rJG4IHzWf
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |<>) (:type :leaf) (:at 1622961432784) (:by |rJG4IHzWf)
                          |j $ {} (:text "|\"Sky Chat") (:type :leaf) (:at 1622961442247) (:by |rJG4IHzWf)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1632654565854) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:font-family) (:type :leaf) (:at 1632654567761) (:by |rJG4IHzWf)
                                  |j $ {} (:text |ui/font-fancy) (:type :leaf) (:at 1632654570419) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1632654566140
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1632654565474
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1622961431414
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1632654593106
                    :by |rJG4IHzWf
                  |w $ {}
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632654559752) (:text |span)
                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632654559752) (:text |nil)
                    :type :expr
                    :at 1632654559752
                    :by |rJG4IHzWf
                :type :expr
                :at 1622961284919
                :by |rJG4IHzWf
            :type :expr
            :at 1622961281366
            :by |rJG4IHzWf
          |turn-codes $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1622960340278) (:by |rJG4IHzWf)
              |j $ {} (:text |turn-codes) (:type :leaf) (:at 1622960338402) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |D $ {} (:text |acc) (:type :leaf) (:at 1622960429848) (:by |rJG4IHzWf)
                  |T $ {} (:text |code) (:type :leaf) (:at 1622960338402) (:by |rJG4IHzWf)
                :type :expr
                :at 1622960338402
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |if) (:type :leaf) (:at 1622960342610) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |=) (:type :leaf) (:at 1622960439252) (:by |rJG4IHzWf)
                      |j $ {} (:text |0) (:type :leaf) (:at 1622960439552) (:by |rJG4IHzWf)
                      |r $ {} (:text |code) (:type :leaf) (:at 1622960442077) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1622960436462
                    :by |rJG4IHzWf
                  |r $ {}
                    :data $ {}
                      |D $ {} (:text |pad9) (:type :leaf) (:at 1622961548883) (:by |rJG4IHzWf)
                      |T $ {} (:text |acc) (:type :leaf) (:at 1622960445391) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1622961538458
                    :by |rJG4IHzWf
                  |v $ {}
                    :data $ {}
                      |D $ {} (:text |recur) (:type :leaf) (:at 1622960474423) (:by |rJG4IHzWf)
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |conj) (:type :leaf) (:at 1622960450644) (:by |rJG4IHzWf)
                          |b $ {} (:text |acc) (:type :leaf) (:at 1622960472776) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |.rem) (:type :leaf) (:at 1632654342602) (:by |rJG4IHzWf)
                              |j $ {} (:text |code) (:type :leaf) (:at 1622960454100) (:by |rJG4IHzWf)
                              |r $ {} (:text |2) (:type :leaf) (:at 1622960454856) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1622960451136
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1622960445792
                        :by |rJG4IHzWf
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |js/Math.floor) (:type :leaf) (:at 1622960483222) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |*) (:type :leaf) (:at 1622960489744) (:by |rJG4IHzWf)
                              |j $ {} (:text |0.5) (:type :leaf) (:at 1622960490659) (:by |rJG4IHzWf)
                              |r $ {} (:text |code) (:type :leaf) (:at 1622960491970) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1622960484117
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1622960475439
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1622960473396
                    :by |rJG4IHzWf
                :type :expr
                :at 1622960342119
                :by |rJG4IHzWf
            :type :expr
            :at 1622960338402
            :by |rJG4IHzWf
          |comp-sentence $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1622960061205) (:by |rJG4IHzWf)
              |j $ {} (:text |comp-sentence) (:type :leaf) (:at 1622960057029) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |text) (:type :leaf) (:at 1622960063792) (:by |rJG4IHzWf)
                :type :expr
                :at 1622960057029
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |list->) (:type :leaf) (:at 1622960074059) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |{}) (:type :leaf) (:at 1622960066077) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:style) (:type :leaf) (:at 1622962367894) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1622962369057) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:width) (:type :leaf) (:at 1622962370068) (:by |rJG4IHzWf)
                                  |j $ {} (:text "|\"100%") (:type :leaf) (:at 1622962371998) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1622962369302
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:word-break) (:type :leaf) (:at 1622962382229) (:by |rJG4IHzWf)
                                  |j $ {} (:text |:break-all) (:type :leaf) (:at 1622962387819) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1622962372822
                                :by |rJG4IHzWf
                              |v $ {}
                                :data $ {}
                                  |T $ {} (:text |:line-height) (:type :leaf) (:at 1622962458555) (:by |rJG4IHzWf)
                                  |j $ {} (:text "|\"16px") (:type :leaf) (:at 1622962466307) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1622962456335
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1622962368128
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1622962365537
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1622960065746
                    :by |rJG4IHzWf
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |->) (:type :leaf) (:at 1622960100595) (:by |rJG4IHzWf)
                      |j $ {} (:text |text) (:type :leaf) (:at 1622960103991) (:by |rJG4IHzWf)
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |.split) (:type :leaf) (:at 1622960115537) (:by |rJG4IHzWf)
                          |j $ {} (:text "|\"") (:type :leaf) (:at 1622960116656) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1622960104766
                        :by |rJG4IHzWf
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |.map-indexed) (:type :leaf) (:at 1622960131367) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |fn) (:type :leaf) (:at 1622960120418) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |D $ {} (:text |idx) (:type :leaf) (:at 1622960133768) (:by |rJG4IHzWf)
                                  |T $ {} (:text |char) (:type :leaf) (:at 1622960124488) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1622960120628
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1622960128421) (:by |rJG4IHzWf)
                                  |j $ {} (:text |idx) (:type :leaf) (:at 1622960135902) (:by |rJG4IHzWf)
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |comp-char) (:type :leaf) (:at 1622960160452) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |.!charCodeAt) (:type :leaf) (:at 1622960168963) (:by |rJG4IHzWf)
                                          |j $ {} (:text |char) (:type :leaf) (:at 1622960171565) (:by |rJG4IHzWf)
                                          |r $ {} (:text |0) (:type :leaf) (:at 1622960171912) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1622960161358
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1622960158271
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1622960127813
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1622960119592
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1622960117671
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1622960085490
                    :by |rJG4IHzWf
                :type :expr
                :at 1622960064342
                :by |rJG4IHzWf
            :type :expr
            :at 1622960057029
            :by |rJG4IHzWf
          |comp-message $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1622959796591) (:by |rJG4IHzWf)
              |j $ {} (:text |comp-message) (:type :leaf) (:at 1622959795159) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |msg) (:type :leaf) (:at 1632655446381) (:by |rJG4IHzWf)
                :type :expr
                :at 1622959795159
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |D $ {} (:text |let) (:type :leaf) (:at 1632655448445) (:by |rJG4IHzWf)
                  |L $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |content) (:type :leaf) (:at 1632655450681) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:message) (:type :leaf) (:at 1632655455677) (:by |rJG4IHzWf)
                              |j $ {} (:text |msg) (:type :leaf) (:at 1632655456440) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1632655451575
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1632655448851
                        :by |rJG4IHzWf
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |name) (:type :leaf) (:at 1632655459850) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:token) (:type :leaf) (:at 1632655462098) (:by |rJG4IHzWf)
                              |j $ {} (:text |msg) (:type :leaf) (:at 1632655463638) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1632655460099
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1632655457657
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1632655448701
                    :by |rJG4IHzWf
                  |T $ {}
                    :data $ {}
                      |T $ {} (:text |div) (:type :leaf) (:at 1622959798134) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1622959799335) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:style) (:type :leaf) (:at 1622959805858) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |D $ {} (:text |merge) (:type :leaf) (:at 1622959814328) (:by |rJG4IHzWf)
                                  |L $ {} (:text |ui/row) (:type :leaf) (:at 1622959815768) (:by |rJG4IHzWf)
                                  |T $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1622959806485) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:width) (:type :leaf) (:at 1622959807642) (:by |rJG4IHzWf)
                                          |j $ {} (:text "|\"90%") (:type :leaf) (:at 1622962437012) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1622959806790
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |:padding) (:type :leaf) (:at 1622959864036) (:by |rJG4IHzWf)
                                          |j $ {} (:text "|\"4px 6px") (:type :leaf) (:at 1622959872093) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1622959862925
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1622959806154
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1622959813500
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1622959803019
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1622959798563
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |div) (:type :leaf) (:at 1622959818254) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1622959818824) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1622959818481
                            :by |rJG4IHzWf
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |div) (:type :leaf) (:at 1622959823788) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1622959824393) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:style) (:type :leaf) (:at 1622959825980) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |{}) (:type :leaf) (:at 1622959826905) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:width) (:type :leaf) (:at 1622959829615) (:by |rJG4IHzWf)
                                              |j $ {} (:text |40) (:type :leaf) (:at 1622959885005) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1622959827224
                                            :by |rJG4IHzWf
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |:height) (:type :leaf) (:at 1622959837415) (:by |rJG4IHzWf)
                                              |j $ {} (:text |40) (:type :leaf) (:at 1622959886550) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1622959835804
                                            :by |rJG4IHzWf
                                          |v $ {}
                                            :data $ {}
                                              |T $ {} (:text |:background-color) (:type :leaf) (:at 1622959843466) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |gen-color) (:type :leaf) (:at 1632656042487) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |name) (:type :leaf) (:at 1632656046594) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1632656041903
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1622959839042
                                            :by |rJG4IHzWf
                                          |x $ {}
                                            :data $ {}
                                              |T $ {} (:text |:border-radius) (:type :leaf) (:at 1622959921496) (:by |rJG4IHzWf)
                                              |j $ {} (:text "|\"4px") (:type :leaf) (:at 1622959926819) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1622959919026
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1622959826530
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1622959824654
                                    :by |rJG4IHzWf
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |:on-click) (:type :leaf) (:at 1632655508337) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |fn) (:type :leaf) (:at 1632655508842) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |e) (:type :leaf) (:at 1632655509267) (:by |rJG4IHzWf)
                                              |j $ {} (:text |d!) (:type :leaf) (:at 1632655509770) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1632655509102
                                            :by |rJG4IHzWf
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |d!) (:type :leaf) (:at 1632655512518) (:by |rJG4IHzWf)
                                              |j $ {} (:text |:rename) (:type :leaf) (:at 1632655514387) (:by |rJG4IHzWf)
                                              |r $ {}
                                                :data $ {}
                                                  |D $ {} (:text |str) (:type :leaf) (:at 1632659134476) (:by |rJG4IHzWf)
                                                  |T $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |js/Math.random) (:type :leaf) (:at 1632659132953) (:by |rJG4IHzWf)
                                                    :type :expr
                                                    :at 1632655514643
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1632659133686
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1632655510409
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1632655508594
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1632655505063
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1622959824097
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1622959823148
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1622959817803
                        :by |rJG4IHzWf
                      |t $ {}
                        :data $ {}
                          |T $ {} (:text |=<) (:type :leaf) (:at 1622959846841) (:by |rJG4IHzWf)
                          |j $ {} (:text |8) (:type :leaf) (:at 1622959847487) (:by |rJG4IHzWf)
                          |r $ {} (:text |nil) (:type :leaf) (:at 1622959848108) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1622959846384
                        :by |rJG4IHzWf
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |div) (:type :leaf) (:at 1622959820074) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1622959821440) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1622962428671) (:by |rJG4IHzWf)
                                  |j $ {} (:text |ui/expand) (:type :leaf) (:at 1622962430067) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1622962426908
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1622959821116
                            :by |rJG4IHzWf
                          |n $ {}
                            :data $ {}
                              |T $ {} (:text |div) (:type :leaf) (:at 1622959944989) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1622959945613) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:style) (:type :leaf) (:at 1622960016816) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |{}) (:type :leaf) (:at 1622960017370) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:color) (:type :leaf) (:at 1622960017370) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |hsl) (:type :leaf) (:at 1622960017370) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |0) (:type :leaf) (:at 1622960017370) (:by |rJG4IHzWf)
                                                  |r $ {} (:text |0) (:type :leaf) (:at 1622960017370) (:by |rJG4IHzWf)
                                                  |v $ {} (:text |70) (:type :leaf) (:at 1622960017370) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1622960017370
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1622960017370
                                            :by |rJG4IHzWf
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |:font-size) (:type :leaf) (:at 1622960017370) (:by |rJG4IHzWf)
                                              |j $ {} (:text |10) (:type :leaf) (:at 1622960017370) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1622960017370
                                            :by |rJG4IHzWf
                                          |v $ {}
                                            :data $ {}
                                              |T $ {} (:text |:line-height) (:type :leaf) (:at 1622960017370) (:by |rJG4IHzWf)
                                              |j $ {} (:text "|\"16px") (:type :leaf) (:at 1622962451870) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1622960017370
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1622960017370
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1622960015810
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1622959945289
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |<>) (:type :leaf) (:at 1622959946685) (:by |rJG4IHzWf)
                                  |j $ {} (:text |name) (:type :leaf) (:at 1632655477815) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1622959946259
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1622959942729
                            :by |rJG4IHzWf
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |comp-sentence) (:type :leaf) (:at 1622960050480) (:by |rJG4IHzWf)
                              |j $ {} (:text |content) (:type :leaf) (:at 1622960701057) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1622959850397
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1622959819592
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1622959797486
                    :by |rJG4IHzWf
                :type :expr
                :at 1632655447914
                :by |rJG4IHzWf
            :type :expr
            :at 1622959795159
            :by |rJG4IHzWf
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1499755354983
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1499755354983) (:by |root)
            |j $ {} (:text |app.comp.container) (:type :leaf) (:at 1499755354983) (:by |root)
            |v $ {}
              :data $ {}
                |yT $ {}
                  :data $ {}
                    |j $ {} (:text |respo-md.comp.md) (:type :leaf) (:at 1519699092590) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1519699093410) (:by |root)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |comp-md) (:type :leaf) (:at 1519699096732) (:by |root)
                      :type :expr
                      :at 1519699093683
                      :by |root
                  :type :expr
                  :at 1519699088529
                  :by |root
                |yj $ {}
                  :data $ {}
                    |j $ {} (:text |app.config) (:type :leaf) (:at 1527788377809) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1521954064826) (:by |root)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |dev?) (:type :leaf) (:at 1521954067604) (:by |root)
                      :type :expr
                      :at 1521954065004
                      :by |root
                  :type :expr
                  :at 1521954061310
                  :by |root
                |yr $ {}
                  :data $ {}
                    |T $ {} (:text |respo.util.format) (:type :leaf) (:at 1622959391145) (:by |rJG4IHzWf)
                    |j $ {} (:text |:refer) (:type :leaf) (:at 1622959391908) (:by |rJG4IHzWf)
                    |r $ {}
                      :data $ {}
                        |T $ {} (:text |hsl) (:type :leaf) (:at 1622959393369) (:by |rJG4IHzWf)
                      :type :expr
                      :at 1622959392220
                      :by |rJG4IHzWf
                  :type :expr
                  :at 1622959387288
                  :by |rJG4IHzWf
                |yv $ {}
                  :data $ {}
                    |T $ {} (:text |memof.alias) (:type :leaf) (:at 1622961701536) (:by |rJG4IHzWf)
                    |j $ {} (:text |:refer) (:type :leaf) (:at 1622961702305) (:by |rJG4IHzWf)
                    |r $ {}
                      :data $ {}
                        |T $ {} (:text |memof-call) (:type :leaf) (:at 1622961703183) (:by |rJG4IHzWf)
                      :type :expr
                      :at 1622961702820
                      :by |rJG4IHzWf
                  :type :expr
                  :at 1622961697976
                  :by |rJG4IHzWf
                |yx $ {}
                  :data $ {}
                    |T $ {} (:text "|\"string-to-color") (:type :leaf) (:at 1632656030175) (:by |rJG4IHzWf)
                    |j $ {} (:text |:default) (:type :leaf) (:at 1632656033300) (:by |rJG4IHzWf)
                    |r $ {} (:text |gen-color) (:type :leaf) (:at 1632656035389) (:by |rJG4IHzWf)
                  :type :expr
                  :at 1632656029217
                  :by |rJG4IHzWf
                |T $ {} (:text |:require) (:type :leaf) (:at 1499755354983) (:by |root)
                |r $ {}
                  :data $ {}
                    |j $ {} (:text |respo-ui.core) (:type :leaf) (:at 1516527080962) (:by |root)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1499755354983) (:by |root)
                    |v $ {} (:text |ui) (:type :leaf) (:at 1499755354983) (:by |root)
                  :type :expr
                  :at 1499755354983
                |v $ {}
                  :data $ {}
                    |j $ {} (:text |respo.core) (:type :leaf) (:at 1540958704705) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1508946162679) (:by |root)
                    |v $ {}
                      :data $ {}
                        |xT $ {} (:text |textarea) (:type :leaf) (:at 1512359490531) (:by |rJG4IHzWf)
                        |yT $ {} (:text |input) (:type :leaf) (:at 1552321107012) (:by |rJG4IHzWf)
                        |yj $ {} (:text |list->) (:type :leaf) (:at 1622959212327) (:by |rJG4IHzWf)
                        |j $ {} (:text |defcomp) (:type :leaf) (:at 1499755354983) (:by |root)
                        |l $ {} (:text |defeffect) (:type :leaf) (:at 1573355389740) (:by |rJG4IHzWf)
                        |r $ {} (:text |<>) (:type :leaf) (:at 1499755354983) (:by |root)
                        |t $ {} (:text |>>) (:type :leaf) (:at 1584780606618) (:by |rJG4IHzWf)
                        |v $ {} (:text |div) (:type :leaf) (:at 1499755354983) (:by |root)
                        |x $ {} (:text |button) (:type :leaf) (:at 1499755354983) (:by |root)
                        |y $ {} (:text |span) (:type :leaf) (:at 1499755354983) (:by |root)
                      :type :expr
                      :at 1499755354983
                  :type :expr
                  :at 1499755354983
                |x $ {}
                  :data $ {}
                    |j $ {} (:text |respo.comp.space) (:type :leaf) (:at 1499755354983) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |=<) (:type :leaf) (:at 1499755354983) (:by |root)
                      :type :expr
                      :at 1499755354983
                  :type :expr
                  :at 1499755354983
                |y $ {}
                  :data $ {}
                    |j $ {} (:text |reel.comp.reel) (:type :leaf) (:at 1507461855480) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1507461856264) (:by |root)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |comp-reel) (:type :leaf) (:at 1507461858342) (:by |root)
                      :type :expr
                      :at 1507461856484
                      :by |root
                  :type :expr
                  :at 1507461845717
                  :by |root
              :type :expr
              :at 1499755354983
          :type :expr
          :at 1499755354983
      |app.schema $ {}
        :defs $ {}
          |store $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |store) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |{}) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |:states) (:type :leaf) (:at 1499755354983) (:by |root)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1499755354983) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:cursor) (:type :leaf) (:at 1584781007054) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1584781007486) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1584781007287
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1584781004285
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1499755354983
                    :type :expr
                    :at 1499755354983
                  |n $ {}
                    :data $ {}
                      |T $ {} (:text |:token) (:type :leaf) (:at 1632655388615) (:by |rJG4IHzWf)
                      |j $ {} (:text "|\"TODO") (:type :leaf) (:at 1632655390247) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1632655385938
                    :by |rJG4IHzWf
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |:messages) (:type :leaf) (:at 1622961226710) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |[]) (:type :leaf) (:at 1622961226710) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1622961226710
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1622961226710
                    :by |rJG4IHzWf
                :type :expr
                :at 1499755354983
            :type :expr
            :at 1499755354983
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1499755354983
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1499755354983) (:by |root)
            |j $ {} (:text |app.schema) (:type :leaf) (:at 1499755354983) (:by |root)
          :type :expr
          :at 1499755354983
      |app.updater $ {}
        :defs $ {}
          |updater $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |updater) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |store) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {} (:text |op) (:type :leaf) (:at 1499755354983) (:by |root)
                  |r $ {} (:text |data) (:type :leaf) (:at 1584874633844) (:by |rJG4IHzWf)
                  |v $ {} (:text |op-id) (:type :leaf) (:at 1519489491135) (:by |root)
                  |x $ {} (:text |op-time) (:type :leaf) (:at 1519489492110) (:by |root)
                :type :expr
                :at 1499755354983
              |v $ {}
                :data $ {}
                  |T $ {} (:text |case-default) (:type :leaf) (:at 1622960895124) (:by |rJG4IHzWf)
                  |j $ {} (:text |op) (:type :leaf) (:at 1499755354983) (:by |root)
                  |l $ {}
                    :data $ {}
                      |D $ {} (:text |do) (:type :leaf) (:at 1622960903442) (:by |rJG4IHzWf)
                      |L $ {}
                        :data $ {}
                          |T $ {} (:text |println) (:type :leaf) (:at 1622960904647) (:by |rJG4IHzWf)
                          |j $ {} (:text "|\"unknown store:") (:type :leaf) (:at 1622960907996) (:by |rJG4IHzWf)
                          |r $ {} (:text |op) (:type :leaf) (:at 1622960908902) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1622960903913
                        :by |rJG4IHzWf
                      |T $ {} (:text |store) (:type :leaf) (:at 1622960902700) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1622960900748
                    :by |rJG4IHzWf
                  |n $ {}
                    :data $ {}
                      |T $ {} (:text |:states) (:type :leaf) (:at 1507399855618) (:by |root)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |update-states) (:type :leaf) (:at 1584874626558) (:by |rJG4IHzWf)
                          |j $ {} (:text |store) (:type :leaf) (:at 1584874628374) (:by |rJG4IHzWf)
                          |r $ {} (:text |data) (:type :leaf) (:at 1584874632002) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1584874625235
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1507399852251
                    :by |root
                  |t $ {}
                    :data $ {}
                      |T $ {} (:text |:hydrate-storage) (:type :leaf) (:at 1518157657108) (:by |root)
                      |j $ {} (:text |data) (:type :leaf) (:at 1584874637339) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1518157547521
                    :by |root
                  |u $ {}
                    :data $ {}
                      |T $ {} (:text |:message) (:type :leaf) (:at 1622960537753) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |update) (:type :leaf) (:at 1622960538841) (:by |rJG4IHzWf)
                          |j $ {} (:text |store) (:type :leaf) (:at 1622960540725) (:by |rJG4IHzWf)
                          |r $ {} (:text |:messages) (:type :leaf) (:at 1622960542054) (:by |rJG4IHzWf)
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |fn) (:type :leaf) (:at 1622960545340) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |xs) (:type :leaf) (:at 1622960547986) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1622960545612
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |conj) (:type :leaf) (:at 1622960549502) (:by |rJG4IHzWf)
                                  |j $ {} (:text |xs) (:type :leaf) (:at 1622960550819) (:by |rJG4IHzWf)
                                  |r $ {}
                                    :data $ {}
                                      |D $ {} (:text |{}) (:type :leaf) (:at 1632655396020) (:by |rJG4IHzWf)
                                      |L $ {}
                                        :data $ {}
                                          |T $ {} (:text |:token) (:type :leaf) (:at 1632655401494) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:token) (:type :leaf) (:at 1632655404025) (:by |rJG4IHzWf)
                                              |j $ {} (:text |store) (:type :leaf) (:at 1632655405390) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1632655403506
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1632655400353
                                        :by |rJG4IHzWf
                                      |T $ {}
                                        :data $ {}
                                          |D $ {} (:text |:message) (:type :leaf) (:at 1632655399560) (:by |rJG4IHzWf)
                                          |T $ {} (:text |data) (:type :leaf) (:at 1622961253706) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1632655397478
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1632655395456
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1622960548892
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1622960545095
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1622960538141
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1622960535928
                    :by |rJG4IHzWf
                  |w $ {}
                    :data $ {}
                      |T $ {} (:text |:rename) (:type :leaf) (:at 1632655531146) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |assoc) (:type :leaf) (:at 1632655532917) (:by |rJG4IHzWf)
                          |j $ {} (:text |store) (:type :leaf) (:at 1632655533758) (:by |rJG4IHzWf)
                          |r $ {} (:text |:token) (:type :leaf) (:at 1632655534737) (:by |rJG4IHzWf)
                          |v $ {} (:text |data) (:type :leaf) (:at 1632655551660) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1632655532002
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1632655530155
                    :by |rJG4IHzWf
                :type :expr
                :at 1499755354983
            :type :expr
            :at 1499755354983
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1499755354983
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1499755354983) (:by |root)
            |j $ {} (:text |app.updater) (:type :leaf) (:at 1499755354983) (:by |root)
            |r $ {}
              :data $ {}
                |T $ {} (:text |:require) (:type :leaf) (:at 1584874616480) (:by |rJG4IHzWf)
                |j $ {}
                  :data $ {}
                    |j $ {} (:text |respo.cursor) (:type :leaf) (:at 1584874620034) (:by |rJG4IHzWf)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1584874621356) (:by |rJG4IHzWf)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |update-states) (:type :leaf) (:at 1584874623096) (:by |rJG4IHzWf)
                      :type :expr
                      :at 1584874621524
                      :by |rJG4IHzWf
                  :type :expr
                  :at 1584874616720
                  :by |rJG4IHzWf
              :type :expr
              :at 1584874614885
              :by |rJG4IHzWf
          :type :expr
          :at 1499755354983
      |app.main $ {}
        :defs $ {}
          |render-app! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |render-app!) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1499755354983
              |v $ {}
                :data $ {}
                  |T $ {} (:text |render!) (:type :leaf) (:at 1632654479516) (:by |rJG4IHzWf)
                  |j $ {} (:text |mount-target) (:type :leaf) (:at 1499755354983) (:by |root)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |comp-container) (:type :leaf) (:at 1499755354983) (:by |root)
                      |j $ {} (:text |@*reel) (:type :leaf) (:at 1507400119272) (:by |root)
                    :type :expr
                    :at 1499755354983
                  |v $ {} (:text |dispatch!) (:type :leaf) (:at 1632654483192) (:by |rJG4IHzWf)
                :type :expr
                :at 1499755354983
            :type :expr
            :at 1499755354983
          |persist-storage! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1533919517365) (:by |rJG4IHzWf)
              |j $ {} (:text |persist-storage!) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1533919515671
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |.setItem) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
                  |j $ {} (:text |js/localStorage) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |:storage-key) (:type :leaf) (:at 1544956703087) (:by |rJG4IHzWf)
                      |j $ {} (:text |config/site) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1533919515671
                    :by |rJG4IHzWf
                  |v $ {}
                    :data $ {}
                      |D $ {} (:text |js/JSON.stringify) (:type :leaf) (:at 1610793207509) (:by |rJG4IHzWf)
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |to-cirru-edn) (:type :leaf) (:at 1610793196653) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:store) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
                              |j $ {} (:text |@*reel) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1533919515671
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1533919515671
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1610793202935
                    :by |rJG4IHzWf
                :type :expr
                :at 1533919515671
                :by |rJG4IHzWf
            :type :expr
            :at 1533919515671
            :by |rJG4IHzWf
          |mount-target $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |mount-target) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |.querySelector) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {} (:text |js/document) (:type :leaf) (:at 1499755354983) (:by |root)
                  |r $ {} (:text ||.app) (:type :leaf) (:at 1499755354983) (:by |root)
                :type :expr
                :at 1499755354983
            :type :expr
            :at 1499755354983
          |*reel $ {}
            :data $ {}
              |T $ {} (:text |defatom) (:type :leaf) (:at 1610792986987) (:by |rJG4IHzWf)
              |j $ {} (:text |*reel) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                  |D $ {} (:text |->) (:type :leaf) (:at 1507399778895) (:by |root)
                  |T $ {} (:text |reel-schema/reel) (:type :leaf) (:at 1507399776350) (:by |root)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |assoc) (:type :leaf) (:at 1507399781682) (:by |root)
                      |j $ {} (:text |:base) (:type :leaf) (:at 1507401405076) (:by |root)
                      |r $ {} (:text |schema/store) (:type :leaf) (:at 1507399787471) (:by |root)
                    :type :expr
                    :at 1507399779656
                    :by |root
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |assoc) (:type :leaf) (:at 1507399781682) (:by |root)
                      |j $ {} (:text |:store) (:type :leaf) (:at 1507399793097) (:by |root)
                      |r $ {} (:text |schema/store) (:type :leaf) (:at 1507399787471) (:by |root)
                    :type :expr
                    :at 1507399779656
                    :by |root
                :type :expr
                :at 1507399777531
                :by |root
            :type :expr
            :at 1499755354983
          |main! $ {}
            :data $ {}
              |yD $ {}
                :data $ {}
                  |T $ {} (:text |listen-devtools!) (:type :leaf) (:at 1507461739167) (:by |root)
                  |j $ {} (:text ||a) (:type :leaf) (:at 1507461691211) (:by |root)
                  |r $ {} (:text |dispatch!) (:type :leaf) (:at 1507461693919) (:by |root)
                :type :expr
                :at 1507461684494
                :by |root
              |yL $ {}
                :data $ {}
                  |T $ {} (:text |.addEventListener) (:type :leaf) (:at 1518157450281) (:by |root)
                  |j $ {} (:text |js/window) (:type :leaf) (:at 1518157453505) (:by |root)
                  |r $ {} (:text ||beforeunload) (:type :leaf) (:at 1518157458163) (:by |root)
                  |v $ {}
                    :data $ {}
                      |D $ {} (:text |fn) (:type :leaf) (:at 1612344222204) (:by |rJG4IHzWf)
                      |L $ {}
                        :data $ {}
                          |T $ {} (:text |event) (:type :leaf) (:at 1612344223520) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1612344222530
                        :by |rJG4IHzWf
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |persist-storage!) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1612344224533
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1612344221583
                    :by |rJG4IHzWf
                :type :expr
                :at 1518157357847
                :by |root
              |yN $ {}
                :data $ {}
                  |T $ {} (:text |repeat!) (:type :leaf) (:at 1544956062322) (:by |rJG4IHzWf)
                  |b $ {} (:text |60) (:type :leaf) (:at 1544956066171) (:by |rJG4IHzWf)
                  |j $ {} (:text |persist-storage!) (:type :leaf) (:at 1533919535136) (:by |rJG4IHzWf)
                :type :expr
                :at 1533919529874
                :by |rJG4IHzWf
              |yP $ {}
                :data $ {}
                  |D $ {} (:text |;) (:type :leaf) (:at 1622962969788) (:by |rJG4IHzWf)
                  |T $ {} (:text |let) (:type :leaf) (:at 1518157495438) (:by |root)
                  |j $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |raw) (:type :leaf) (:at 1518157496930) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |.getItem) (:type :leaf) (:at 1518157501316) (:by |root)
                              |j $ {} (:text |js/localStorage) (:type :leaf) (:at 1518157504638) (:by |root)
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:storage-key) (:type :leaf) (:at 1544956709260) (:by |rJG4IHzWf)
                                  |j $ {} (:text |config/site) (:type :leaf) (:at 1527788293499) (:by |root)
                                :type :expr
                                :at 1518157506313
                                :by |root
                            :type :expr
                            :at 1518157497615
                            :by |root
                        :type :expr
                        :at 1518157495826
                        :by |root
                    :type :expr
                    :at 1518157495644
                    :by |root
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |when) (:type :leaf) (:at 1533919640958) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |some?) (:type :leaf) (:at 1518157515786) (:by |root)
                          |j $ {} (:text |raw) (:type :leaf) (:at 1518157516878) (:by |root)
                        :type :expr
                        :at 1518157515117
                        :by |root
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |dispatch!) (:type :leaf) (:at 1518157523818) (:by |root)
                          |j $ {} (:text |:hydrate-storage) (:type :leaf) (:at 1518157669936) (:by |root)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |extract-cirru-edn) (:type :leaf) (:at 1610793172059) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |D $ {} (:text |js/JSON.parse) (:type :leaf) (:at 1610793177415) (:by |rJG4IHzWf)
                                  |T $ {} (:text |raw) (:type :leaf) (:at 1518157531240) (:by |root)
                                :type :expr
                                :at 1610793173220
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1518157527987
                            :by |root
                        :type :expr
                        :at 1518157521635
                        :by |root
                    :type :expr
                    :at 1518157514334
                    :by |root
                :type :expr
                :at 1518157492640
                :by |root
              |yR $ {}
                :data $ {}
                  |T $ {} (:text |js/setTimeout) (:type :leaf) (:at 1622962978573) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |fn) (:type :leaf) (:at 1622962979531) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                        :type :expr
                        :at 1622962979794
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |dispatch!) (:type :leaf) (:at 1622962990605) (:by |rJG4IHzWf)
                          |j $ {} (:text |:message) (:type :leaf) (:at 1622962992510) (:by |rJG4IHzWf)
                          |r $ {} (:text "|\"你好呀") (:type :leaf) (:at 1622962995882) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1622962986066
                        :by |rJG4IHzWf
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |dispatch!) (:type :leaf) (:at 1622962990605) (:by |rJG4IHzWf)
                          |j $ {} (:text |:message) (:type :leaf) (:at 1622962992510) (:by |rJG4IHzWf)
                          |r $ {} (:text "|\"中午吃了吗") (:type :leaf) (:at 1622963014800) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1622962986066
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1622962979229
                    :by |rJG4IHzWf
                  |r $ {} (:text |1000) (:type :leaf) (:at 1622962983474) (:by |rJG4IHzWf)
                :type :expr
                :at 1622962971924
                :by |rJG4IHzWf
              |yT $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {} (:text "||App started.") (:type :leaf) (:at 1499755354983) (:by |root)
                :type :expr
                :at 1499755354983
              |T $ {} (:text |defn) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |main!) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1499755354983
              |s $ {}
                :data $ {}
                  |T $ {} (:text |load-console-formatter!) (:type :leaf) (:at 1622960862395) (:by |rJG4IHzWf)
                :type :expr
                :at 1622960855117
                :by |rJG4IHzWf
              |t $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1544874434638) (:by |rJG4IHzWf)
                  |j $ {} (:text "|\"Running mode:") (:type :leaf) (:at 1544874509800) (:by |rJG4IHzWf)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |if) (:type :leaf) (:at 1544874440190) (:by |rJG4IHzWf)
                      |j $ {} (:text |config/dev?) (:type :leaf) (:at 1544874446442) (:by |rJG4IHzWf)
                      |r $ {} (:text "|\"dev") (:type :leaf) (:at 1544874449063) (:by |rJG4IHzWf)
                      |v $ {} (:text "|\"release") (:type :leaf) (:at 1544874452316) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1544874440404
                    :by |rJG4IHzWf
                :type :expr
                :at 1544874433785
                :by |rJG4IHzWf
              |x $ {}
                :data $ {}
                  |T $ {} (:text |render-app!) (:type :leaf) (:at 1499755354983) (:by |root)
                :type :expr
                :at 1499755354983
              |y $ {}
                :data $ {}
                  |T $ {} (:text |add-watch) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {} (:text |*reel) (:type :leaf) (:at 1507399915531) (:by |root)
                  |r $ {} (:text |:changes) (:type :leaf) (:at 1499755354983) (:by |root)
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |fn) (:type :leaf) (:at 1499755354983) (:by |root)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |reel) (:type :leaf) (:at 1612280609284) (:by |rJG4IHzWf)
                          |j $ {} (:text |prev) (:type :leaf) (:at 1612280610651) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1499755354983
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |render-app!) (:type :leaf) (:at 1499755354983) (:by |root)
                        :type :expr
                        :at 1499755354983
                    :type :expr
                    :at 1499755354983
                :type :expr
                :at 1499755354983
            :type :expr
            :at 1499755354983
          |snippets $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1551977434239) (:by |rJG4IHzWf)
              |j $ {} (:text |snippets) (:type :leaf) (:at 1551977434239) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1551977434239
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1551977458023) (:by |rJG4IHzWf)
                  |j $ {} (:text |config/cdn?) (:type :leaf) (:at 1551977477010) (:by |rJG4IHzWf)
                :type :expr
                :at 1551977444630
                :by |rJG4IHzWf
            :type :expr
            :at 1551977434239
            :by |rJG4IHzWf
          |dispatch! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |dispatch!) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |op) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {} (:text |op-data) (:type :leaf) (:at 1499755354983) (:by |root)
                :type :expr
                :at 1499755354983
              |t $ {}
                :data $ {}
                  |D $ {} (:text |when) (:type :leaf) (:at 1547437687530) (:by |root)
                  |L $ {}
                    :data $ {}
                      |D $ {} (:text |and) (:type :leaf) (:at 1584874662518) (:by |rJG4IHzWf)
                      |T $ {} (:text |config/dev?) (:type :leaf) (:at 1547437691006) (:by |root)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |not=) (:type :leaf) (:at 1584874664551) (:by |rJG4IHzWf)
                          |j $ {} (:text |op) (:type :leaf) (:at 1584874665829) (:by |rJG4IHzWf)
                          |r $ {} (:text |:states) (:type :leaf) (:at 1584874671745) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1584874663522
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1584874661674
                    :by |rJG4IHzWf
                  |T $ {}
                    :data $ {}
                      |j $ {} (:text |println) (:type :leaf) (:at 1518156276516) (:by |root)
                      |r $ {} (:text "|\"Dispatch:") (:type :leaf) (:at 1547437698992) (:by |root)
                      |v $ {} (:text |op) (:type :leaf) (:at 1518156280471) (:by |root)
                      |x $ {} (:text |op-data) (:type :leaf) (:at 1622961104556) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1518156274050
                    :by |root
                :type :expr
                :at 1547437686766
                :by |root
              |v $ {}
                :data $ {}
                  |T $ {} (:text |reset!) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {} (:text |*reel) (:type :leaf) (:at 1507399899641) (:by |root)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |reel-updater) (:type :leaf) (:at 1507399887573) (:by |root)
                      |j $ {} (:text |updater) (:type :leaf) (:at 1507399888500) (:by |root)
                      |r $ {} (:text |@*reel) (:type :leaf) (:at 1507399891576) (:by |root)
                      |v $ {} (:text |op) (:type :leaf) (:at 1507399892687) (:by |root)
                      |x $ {} (:text |op-data) (:type :leaf) (:at 1507399894594) (:by |root)
                    :type :expr
                    :at 1507399884621
                    :by |root
                :type :expr
                :at 1584780634192
                :by |rJG4IHzWf
            :type :expr
            :at 1499755354983
          |reload! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1632654430212) (:by |rJG4IHzWf)
              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632654430212) (:text |reload!)
              |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1632654430212)
                :data $ {}
              |v $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1632654430212)
                :data $ {}
                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632654430212) (:text |if)
                  |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1632654430212)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632654430212) (:text |nil?)
                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632654430212) (:text |build-errors)
                  |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1632654430212)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632654430212) (:text |do)
                      |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1632654430212)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632654430212) (:text |remove-watch)
                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632654430212) (:text |*reel)
                          |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632654430212) (:text |:changes)
                      |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1632654430212)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632654430212) (:text |clear-cache!)
                      |v $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1632654430212)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632654430212) (:text |add-watch)
                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632654430212) (:text |*reel)
                          |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632654430212) (:text |:changes)
                          |v $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1632654430212)
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632654430212) (:text |fn)
                              |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1632654430212)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632654430212) (:text |reel)
                                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632654430212) (:text |prev)
                              |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1632654430212)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632654430212) (:text |render-app!)
                      |x $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1632654430212)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632654430212) (:text |reset!)
                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632654430212) (:text |*reel)
                          |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1632654430212)
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632654430212) (:text |refresh-reel)
                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632654430212) (:text |@*reel)
                              |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632654430212) (:text |schema/store)
                              |v $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632654430212) (:text |updater)
                      |y $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1632654430212)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632654430212) (:text |hud!)
                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632654430212) (:text "|\"ok~")
                          |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632654430212) (:text "|\"Ok")
                  |v $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1632654430212)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632654430212) (:text |hud!)
                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632654430212) (:text "|\"error")
                      |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632654430212) (:text |build-errors)
            :type :expr
            :at 1632654430212
            :by |rJG4IHzWf
          |repeat! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1610793045335) (:by |rJG4IHzWf)
              |j $ {} (:text |repeat!) (:type :leaf) (:at 1610793045335) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |duration) (:type :leaf) (:at 1610793047914) (:by |rJG4IHzWf)
                  |j $ {} (:text |cb) (:type :leaf) (:at 1610793055850) (:by |rJG4IHzWf)
                :type :expr
                :at 1610793045335
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |js/setTimeout) (:type :leaf) (:at 1610793066184) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |fn) (:type :leaf) (:at 1610793079545) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                        :type :expr
                        :at 1610793080160
                        :by |rJG4IHzWf
                      |n $ {}
                        :data $ {}
                          |T $ {} (:text |cb) (:type :leaf) (:at 1610793091010) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1610793090420
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |repeat!) (:type :leaf) (:at 1610793083422) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |*) (:type :leaf) (:at 1610794352418) (:by |rJG4IHzWf)
                              |j $ {} (:text |1000) (:type :leaf) (:at 1610794467961) (:by |rJG4IHzWf)
                              |r $ {} (:text |duration) (:type :leaf) (:at 1610794352418) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1610794352418
                            :by |rJG4IHzWf
                          |r $ {} (:text |cb) (:type :leaf) (:at 1610794361837) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1610793080941
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1610793079106
                    :by |rJG4IHzWf
                  |r $ {}
                    :data $ {}
                      |D $ {} (:text |*) (:type :leaf) (:at 1610793072002) (:by |rJG4IHzWf)
                      |L $ {} (:text |1000) (:type :leaf) (:at 1610794470143) (:by |rJG4IHzWf)
                      |T $ {} (:text |duration) (:type :leaf) (:at 1610793071233) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1610793071391
                    :by |rJG4IHzWf
                :type :expr
                :at 1610793056606
                :by |rJG4IHzWf
            :type :expr
            :at 1610793045335
            :by |rJG4IHzWf
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1499755354983
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1499755354983) (:by |root)
            |j $ {} (:text |app.main) (:type :leaf) (:at 1499755354983) (:by |root)
            |r $ {}
              :data $ {}
                |yyT $ {}
                  :data $ {}
                    |T $ {} (:text "|\"./calcit.build-errors") (:type :leaf) (:at 1632654439815) (:by |rJG4IHzWf)
                    |j $ {} (:text |:default) (:type :leaf) (:at 1632654439815) (:by |rJG4IHzWf)
                    |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632654439815) (:text |build-errors)
                  :type :expr
                  :at 1632654439815
                  :by |rJG4IHzWf
                |yyj $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1632654439815)
                  :data $ {}
                    |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632654439815) (:text "|\"bottom-tip")
                    |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632654439815) (:text |:default)
                    |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1632654439815) (:text |hud!)
                |yT $ {}
                  :data $ {}
                    |j $ {} (:text |app.schema) (:type :leaf) (:at 1499755354983) (:by |root)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1499755354983) (:by |root)
                    |v $ {} (:text |schema) (:type :leaf) (:at 1499755354983) (:by |root)
                  :type :expr
                  :at 1499755354983
                |yj $ {}
                  :data $ {}
                    |j $ {} (:text |reel.util) (:type :leaf) (:at 1507399678694) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1507399680625) (:by |root)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |listen-devtools!) (:type :leaf) (:at 1518156292092) (:by |root)
                      :type :expr
                      :at 1507399680857
                      :by |root
                  :type :expr
                  :at 1507399674125
                  :by |root
                |yr $ {}
                  :data $ {}
                    |j $ {} (:text |reel.core) (:type :leaf) (:at 1507399687162) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1507399688098) (:by |root)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |reel-updater) (:type :leaf) (:at 1507399691010) (:by |root)
                        |q $ {} (:text |refresh-reel) (:type :leaf) (:at 1518156288482) (:by |root)
                      :type :expr
                      :at 1507399688322
                      :by |root
                  :type :expr
                  :at 1507399683930
                  :by |root
                |yv $ {}
                  :data $ {}
                    |j $ {} (:text |reel.schema) (:type :leaf) (:at 1507399717674) (:by |root)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1507399755750) (:by |root)
                    |v $ {} (:text |reel-schema) (:type :leaf) (:at 1507399757678) (:by |root)
                  :type :expr
                  :at 1507399715229
                  :by |root
                |yy $ {}
                  :data $ {}
                    |j $ {} (:text |app.config) (:type :leaf) (:at 1527788304925) (:by |root)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1527788306048) (:by |root)
                    |v $ {} (:text |config) (:type :leaf) (:at 1527788306884) (:by |root)
                  :type :expr
                  :at 1527788302920
                  :by |root
                |T $ {} (:text |:require) (:type :leaf) (:at 1499755354983) (:by |root)
                |j $ {}
                  :data $ {}
                    |j $ {} (:text |respo.core) (:type :leaf) (:at 1499755354983) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |render!) (:type :leaf) (:at 1499755354983) (:by |root)
                        |r $ {} (:text |clear-cache!) (:type :leaf) (:at 1499755354983) (:by |root)
                        |v $ {} (:text |realize-ssr!) (:type :leaf) (:at 1499755354983) (:by |root)
                      :type :expr
                      :at 1499755354983
                  :type :expr
                  :at 1499755354983
                |v $ {}
                  :data $ {}
                    |j $ {} (:text |app.comp.container) (:type :leaf) (:at 1499755354983) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |comp-container) (:type :leaf) (:at 1499755354983) (:by |root)
                      :type :expr
                      :at 1499755354983
                  :type :expr
                  :at 1499755354983
                |y $ {}
                  :data $ {}
                    |j $ {} (:text |app.updater) (:type :leaf) (:at 1508556737455) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |updater) (:type :leaf) (:at 1499755354983) (:by |root)
                      :type :expr
                      :at 1499755354983
                  :type :expr
                  :at 1499755354983
              :type :expr
              :at 1499755354983
          :type :expr
          :at 1499755354983
      |app.config $ {}
        :defs $ {}
          |cdn? $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1544873887168) (:by |rJG4IHzWf)
              |j $ {} (:text |cdn?) (:type :leaf) (:at 1544873887168) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |cond) (:type :leaf) (:at 1544873887168) (:by |rJG4IHzWf)
                  |j $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |exists?) (:type :leaf) (:at 1544873887168) (:by |rJG4IHzWf)
                          |j $ {} (:text |js/window) (:type :leaf) (:at 1544873887168) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1544873887168
                        :by |rJG4IHzWf
                      |j $ {} (:text |false) (:type :leaf) (:at 1544873887168) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1544873887168
                    :by |rJG4IHzWf
                  |r $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |exists?) (:type :leaf) (:at 1544873887168) (:by |rJG4IHzWf)
                          |j $ {} (:text |js/process) (:type :leaf) (:at 1544873887168) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1544873887168
                        :by |rJG4IHzWf
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |=) (:type :leaf) (:at 1544873887168) (:by |rJG4IHzWf)
                          |j $ {} (:text "|\"true") (:type :leaf) (:at 1544873887168) (:by |rJG4IHzWf)
                          |r $ {} (:text |js/process.env.cdn) (:type :leaf) (:at 1544873887168) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1544873887168
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1544873887168
                    :by |rJG4IHzWf
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |:else) (:type :leaf) (:at 1544873887168) (:by |rJG4IHzWf)
                      |j $ {} (:text |false) (:type :leaf) (:at 1544873887168) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1544873887168
                    :by |rJG4IHzWf
                :type :expr
                :at 1544873887168
                :by |rJG4IHzWf
            :type :expr
            :at 1544873887168
            :by |rJG4IHzWf
          |dev? $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1544873875614) (:by |rJG4IHzWf)
              |j $ {} (:text |dev?) (:type :leaf) (:at 1544873875614) (:by |rJG4IHzWf)
              |r $ {} (:text |true) (:type :leaf) (:at 1610793323611) (:by |rJG4IHzWf)
            :type :expr
            :at 1544873875614
            :by |rJG4IHzWf
          |site $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1518157345496) (:by |root)
              |j $ {} (:text |site) (:type :leaf) (:at 1518157327696) (:by |root)
              |r $ {}
                :data $ {}
                  |yT $ {}
                    :data $ {}
                      |T $ {} (:text |:icon) (:type :leaf) (:at 1527868458476) (:by |root)
                      |j $ {} (:text "|\"http://cdn.tiye.me/logo/mvc-works.png") (:type :leaf) (:at 1527868478815) (:by |root)
                    :type :expr
                    :at 1527868457696
                    :by |root
                  |yf $ {}
                    :data $ {}
                      |T $ {} (:text |:storage-key) (:type :leaf) (:at 1544956719115) (:by |rJG4IHzWf)
                      |j $ {} (:text "|\"workflow") (:type :leaf) (:at 1544956719115) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1544956719115
                    :by |rJG4IHzWf
                  |T $ {} (:text |{}) (:type :leaf) (:at 1518157346643) (:by |root)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |:dev-ui) (:type :leaf) (:at 1527526864597) (:by |root)
                      |x $ {} (:text "|\"http://localhost:8100/main-fonts.css") (:type :leaf) (:at 1556700447561) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1527526861413
                    :by |root
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |:release-ui) (:type :leaf) (:at 1527526868617) (:by |root)
                      |j $ {} (:text "|\"http://cdn.tiye.me/favored-fonts/main-fonts.css") (:type :leaf) (:at 1556700443008) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1527526865931
                    :by |root
                  |w $ {}
                    :data $ {}
                      |T $ {} (:text |:cdn-url) (:type :leaf) (:at 1528008962775) (:by |root)
                      |j $ {} (:text "|\"http://cdn.tiye.me/calcit-workflow/") (:type :leaf) (:at 1528008965359) (:by |root)
                    :type :expr
                    :at 1528008960614
                    :by |root
                  |y $ {}
                    :data $ {}
                      |T $ {} (:text |:title) (:type :leaf) (:at 1527868457305) (:by |root)
                      |j $ {} (:text "|\"Calcit") (:type :leaf) (:at 1540053963607) (:by |root)
                    :type :expr
                    :at 1527868456422
                    :by |root
                :type :expr
                :at 1518157327696
                :by |root
            :type :expr
            :at 1545933382603
            :by |root
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1527788237503
          :by |root
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1527788237503) (:by |root)
            |j $ {} (:text |app.config) (:type :leaf) (:at 1527788237503) (:by |root)
          :type :expr
          :at 1527788237503
          :by |root
  :users $ {}
    |root $ {} (:avatar nil) (:name |root) (:nickname |root) (:id |root) (:theme :star-trail) (:password |d41d8cd98f00b204e9800998ecf8427e)
    |rJG4IHzWf $ {} (:avatar nil) (:name |chen) (:nickname |chen) (:id |rJG4IHzWf) (:theme :star-trail) (:password |d41d8cd98f00b204e9800998ecf8427e)
