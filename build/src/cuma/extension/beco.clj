(ns cuma.extension.beco
  (:require
    [clojure.string :as str]))

(defn first-line
  [data arg]
  (-> arg str/split-lines first))
