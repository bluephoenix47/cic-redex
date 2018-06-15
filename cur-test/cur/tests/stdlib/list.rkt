#lang cur
(require
 rackunit
 cur/stdlib/sugar
 cur/stdlib/bool
 cur/stdlib/nat
 cur/stdlib/maybe
 cur/stdlib/list)

(check-equal?
 nil
 nil)
;; NB HACK: Hack to register :: as a test-case.
;; TODO: Abstract this away
(check-equal?
 (void)
 (:: (cons Bool true (nil Bool)) (List Bool)))

(check-equal?
 (nil Nat)
 (build-list Nat))

(check-equal?
 (cons Nat z (nil Nat))
 (build-list Nat z))

(check-equal?
 (cons Nat z (cons Nat z (nil Nat)))
 (build-list Nat z z))

(check-equal?
 (void)
 (:: (lambda (A : Type) (a : A)
             (ih-a : (-> Nat (Maybe A)))
             (n : Nat)
             (match n
               [z (some A a)]
               [(s (n-1 : Nat))
                (ih-a n-1)]))
     (forall (A : Type) (a : A) (ih-a : (-> Nat (Maybe A)))
             (n : Nat)
             (Maybe A))))
(check-equal?
 (void)
 (:: (lambda (A : Type) (n : Nat) (none A)) (forall (A : Type) (-> Nat (Maybe A)))))
(check-equal?
 (void)
 (:: (elim List (lambda (ls : (List Bool)) Nat)
          (z
           (lambda (a : Bool) (ls : (List Bool)) (ih : Nat)
                   z))
          (nil Bool))
    Nat))


(check-equal?
 (void)
 (:: list-ref (forall (A : Type) (-> (List A) Nat (Maybe A)))))
(check-equal?
 ((list-ref Bool (cons Bool true (nil Bool))) z)
 (some Bool true))

;; TODO: Produces bad error message
; (((list-ref Bool (cons Bool true (nil Bool))) z) z)
