(use-modules (hoot eval)
             (hoot ffi)
             ((hoot error-handling) #:select (format-exception))
             (repl-environment))

(define-foreign get-expression
  "main" "getExpression"
  -> (ref string))
(define-foreign set-log
  "main" "setLog"
  (ref string) -> none)
(define-foreign keyboard-event-key
  "event" "keyboardKey"
  (ref null extern) -> (ref string))
(define-foreign %keyboard-event-shift?
  "event" "keyboardShiftKey"
  (ref null extern) -> i32)
(define (keyboard-event-shift? elem)
  (= (%keyboard-event-shift? elem) 1))
(define-foreign add-event-listener!
  "element" "addEventListener"
  (ref null extern) (ref string) (ref null extern) -> none)
(define-foreign get-element-by-id
  "document" "getElementById"
  (ref string) -> (ref null extern))

(add-event-listener! (get-element-by-id "turtle-expression") "keyup" (procedure->external maybe-eval))

(define (display-specified x)
  (define *unspecified* (if #f #f))
  (define (unspecified? x)
    (eq? x *unspecified*))
  (unless (unspecified? x) (display x)))

(define (call-with-error-handling thunk)
  (define (handler exn)
    (format-exception exn (current-output-port)))
  (with-exception-handler handler thunk #:unwind? #t))

(define %invalid (cons 'invalid 'expression))
(define (read* port)
  (define (handler exn) %invalid)
  (with-exception-handler handler (lambda () (read port)) #:unwind? #t))

(define (eval! str)
  (let ((exp (read* (open-input-string str)))
        (output (open-output-string)))
    ;; Redirect all output to our output port.
    (parameterize ((current-output-port output))
      (if (eq? exp %invalid)
        (display "invalid Scheme expression\n")
        (call-with-values (lambda ()
                            (call-with-error-handling
                             (lambda ()
                               (eval exp (repl-environment)))))
          (lambda vals (for-each display-specified vals)))))
    (set-log (get-output-string output))))

(define (maybe-eval event)
  (let ((key (keyboard-event-key event)))
    (if (and (string=? key "Enter") (not (keyboard-event-shift? event)))
      (let* ((exp (get-expression)))
        (unless (string=? exp "")
          (eval! (string-append "(begin (reset) " exp ")")))))))

(eval! (get-expression))

; build with
; ./pre-inst-env guild compile-wasm -L module -o repl.wasm repl.scm