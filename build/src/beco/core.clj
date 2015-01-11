(ns beco.core
  (:require
    [cuma.core   :as cuma]
    [clojure.edn :as edn]))

(def DEFINITION_FILE      "def.edn")
(def BIN_TEMPLATE_FILE    "template/def.txt")
(def README_TEMPLATE_FILE "template/README.md")
(def DEF_OUTPUT           "../def/$(name).def")
(def README_OUTPUT        "../README.md")

(defn -main
  []
  (let [defs     (-> DEFINITION_FILE slurp edn/read-string)
        def-tmpl (slurp BIN_TEMPLATE_FILE)
        rm-tmpl  (slurp README_TEMPLATE_FILE)]
    ;; generate def files
    (doseq [command (keys defs)]
      (spit (cuma/render DEF_OUTPUT {:name (name command)})
            (cuma/render def-tmpl (command defs))))

    ;; generate README
    (spit README_OUTPUT
          (cuma/render rm-tmpl
                       {:defs (map #(assoc (get defs %) :name (name %)) (keys defs))}
                       ))))
