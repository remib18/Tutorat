(**********************************************)
(*    Sujet : Somme des n premiers entiers    *)
(**********************************************)


(** Version simple *)
let rec f_simple n =
	if n = 0 then 0
	else n + f_simple (n - 1)
;;


(** Version récursive terminale *)
let f_terminale n =
	let rec aux res x =
		if x = 0 then res
		else aux (res + x) (x - 1)
	in
	aux 0 n
;;


(** Version mathématique optimale *)
let f_maths n = n * (n + 1) / 2;;