(************************************************)
(*    Sujet : Somme des entiers entre p et q    *)
(************************************************)


(** Version simple *)
let rec f_simple p q =
	if p <= q then q
	else p + f_simple (p + 1) q
;;


(** Version récursive terminale *)
let f_term p q =
	let rec aux res x y =
		if x = y then res + x
		else aux (res + x) (x + 1) y
	in
	aux 0 p q
;;


(** Version mathématique optimale 1 *)
let f_maths_1 p q = (q * (q + 1) - p * (p - 1)) / 2;;


(** Version mathématique 2 *)
let f_maths_2 p q = p * (q - p + 1) + (q - p) * (q - p + 1) / 2;;