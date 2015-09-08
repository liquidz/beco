(ns cuma.extension.beco
  (:require
    [clojure.string :as str]))

(defn first-line
  [data arg]
  {:raw? true :body (-> arg str/split-lines first)})
