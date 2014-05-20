(define (xysqrt in)
  (sqrt-iter 1.0 in))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve g b)
  (/ (+ g
        (/ b g))
     2.0))

(define (good-enough? c d)
  (< (abs (- (square c)
             d))
     0.001))

(define (square x)
  (* x x))

(define (sqrt-test num test-times)
  (begin (display num) (display (xysqrt num)) (newline)
         (if (> test-times 0)
           (sqrt-test (* num num) (- test-times 1))
           num)))

