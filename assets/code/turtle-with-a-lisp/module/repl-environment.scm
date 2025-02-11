(library (repl-environment)
  (export repl-environment)
  (import (except (guile) - / = < <= = >= >)
          (prefix (only (guile) - / < <= = > >=) %)
          (only (hoot modules) current-module)
	  (hoot ffi))

	(define-foreign left
	  "turtle" "left"
	  f64 -> none)
  (define-foreign right
	  "turtle" "right"
	  f64 -> none)
  (define-foreign forward
	  "turtle" "forward"
	  f64 -> none)
  (define-foreign hue
	  "turtle" "hue"
	  f64 -> none)
  (define-foreign up
	  "turtle" "up"
	  -> none)
  (define-foreign down
	  "turtle" "down"
	  -> none)
  (define-foreign reset
	  "turtle" "reset"
	  -> none)

  ;; Some of the arithmetic and comparison operators are macros, which
  ;; don't work with Hoot's eval yet.  So, we use their identifier
  ;; syntax to residualize them to procedures here.
  (define - %-)
  (define / %/)
  (define < %<)
  (define <= %<=)
  (define = %=)
  (define >= %>=)
  (define > %>)

  (define (repl-environment)
    (current-module)))
