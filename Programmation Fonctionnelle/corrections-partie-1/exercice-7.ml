(*****************************)
(*    Sujet : Factorielle    *)
(*****************************)


(** Version simple *)
let rec f_simple n =
	if n = 1 then 1
	else n * f_simple (n - 1)
;;


(** Version récursive terminale *)
let f_term n =
	let rec aux res x =
		if x = 1 then res
		else aux (res * x) (x - 1)
	in
	aux 1 n
;;