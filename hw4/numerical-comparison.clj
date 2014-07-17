
(def x (range 0 1))
(defn y [x])
(def y' y)
(y 0) => 1

;; TODO solve for step sizes h = 2^{-s} for s = 3,4,...,15
;; TODO plot the error at the right end-point (y 1) - (y_n (/ 1 h))

;; k step-number
;; h step-size
;; alpha_k = 1
(defn lmm [k C]
  (* h
     (+ ))
  )

(def eulers-method (lmm 1 1/2))
(def trapezoidal-rule (lmm 1 -1/12))
(def simpsons-rule (lmm 2 -1/90))
(def runge-kutta (lmm))

;; Racket
(defn lmm-ode-solve [f init & {:keys [x-max h method]}]
  {:pre [(not-nil? x-max h method)]}
  (reverse
   (take-while #(<= % x-max)
               (iterate (method f h)
                        init))))

(def y' (fn [t T] T))

(def eulers-method (lmm-ode-solve (fn [t T] T)
                                  1
                                  :x-max 1
                                  :h 1
                                  :method (fn [f h]
                                            (fn [x y]
                                              (list (+ x h)
                                                    (+ y (* h (f x y))))))))

(def runge-kutta-2 (lmm-ode-solve :method (fn [f h]
                                            (fn [x y]
                                              (list (+ x h)
                                                    (+ y (* h (F (+ x (* 1/2 h))
                                                                 (+ y (* 1/2 h (F x y)))))))))))
