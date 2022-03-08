(**************************************)
(*    Sujet : Division euclidienne    *)
(**************************************)


(** Version simple *)
let rec f_simple a b =
	if a < b then 0
	else 1 + f_simple (a - b) b
;;

(** Version récursive terminale *)
let f_term a b =
	let rec aux res a b =
		if a < b then res
		else aux (1 + res) (a - b) b
	in
	aux 0 a b
;;