Require Import IEEE.

Definition t := Single.

Definition m := Rounding_nearest.

Definition test_add (x y : diadic) :=
  (Dadd x y,
  diadic_of_abstract t
    (fst
       (abstract_add t m (abstract_of_diadic t m x)
          (abstract_of_diadic t m y)))).

Definition verif (x y : diadic) := let (s1, s2) := test_add x y in Deq s1 s2.

Definition t1 := Diadic 10456 0.
Definition t2 := Diadic 10456 1.