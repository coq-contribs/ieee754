(********************************************************)
(* Une  axiomatisation en coq de la norme IEEE 754 	*)
(* Module IEEE754_properties.v			  	*)
(* un plan d'ensemble se trouve dans le fichier README 	*)
(* Patrick Loiseleur, avril 1997			*)
(********************************************************)

Require Import Omega.
Require Import Zcomplements.
Require Import Zpower.
Require Import Zlogarithm.
Require Import Diadic.
Require Import IEEE754_def.

Section basic_verifs.

Lemma max_abstract_wf :
 forall (b : bool) (t : float_type), abstract_wf t (max_abstract t b).
simple induction b; simple induction t; compute in |- *; split; split;
 trivial || discriminate.
Qed.

(****
Lemma abstract_of_diadic_wf : (t:float_type)(m:rounding_mode)(d:diadic)
  (abstract_wf t (abstract_of_diadic t m d)).
Intro t; Destruct m; Intro d; Red.

Unfold abstract_of_diadic; Trivial.
****)

End basic_verifs.