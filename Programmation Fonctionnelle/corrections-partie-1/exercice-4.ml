(****************************************************)
(*    Sujet : Dernier chiffre de puissance(2, n)    *)
(****************************************************)


(** Version simple *)
let rec f_simple n =
	if n = 0 then 1
	else 2 * (f_simple (n - 1)) mod 10
;;


(** Version récursive terminale *)
let f_term n =
	let rec aux res n =
		if n = 0 then 1
		else aux ((2 * res) mod 10) (n - 1)
	in
	aux 1 n
;;


(** Version optimale *)
let f_opti n =
	if n = 0 then 1
	else match n mod 4 with
		| 0 -> 6
		| 1 -> 2
		| 2 -> 4
		| 3 -> 8
		| _ -> failwith "ce cas n'arrive jamais"
;;