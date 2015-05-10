(ns beco.core
  (:require
    [cuma.core   :as cuma]
    [clojure.edn :as edn]
    cuma.extension.beco))

(def DEFINITION_FILE        "def.edn")
(def DEF_TEMPLATE_FILE      "template/def.txt")
(def VER_TEMPLATE_FILE      "template/version.txt")
(def README_TEMPLATE_FILE   "template/README.md")
(def ZSH_COMP_TEMPLATE_FILE "template/_beco.zsh")
(def DEF_OUTPUT             "../def/$(name).def")
(def README_OUTPUT          "../README.md")
(def ZSH_COMP_OUTPUT        "../zsh/_beco")

(defn -main
  []
  (let [defs     (-> DEFINITION_FILE slurp edn/read-string)
        def-tmpl (slurp DEF_TEMPLATE_FILE)
        ver-tmpl (slurp VER_TEMPLATE_FILE)
        rm-tmpl  (slurp README_TEMPLATE_FILE)
        zsh-tmpl (slurp ZSH_COMP_TEMPLATE_FILE)]
    ;; generate version file
    (spit (cuma/render DEF_OUTPUT {:name "version"})
          (cuma/render ver-tmpl defs))
    ;; generate def files
    (doseq [command (:commands defs)]
      (spit (cuma/render DEF_OUTPUT command)
            (cuma/render def-tmpl command)))
    ;; generate README
    (spit README_OUTPUT (cuma/render rm-tmpl defs))
    ;; generate zsh complete
    (spit ZSH_COMP_OUTPUT (cuma/render zsh-tmpl defs))))
