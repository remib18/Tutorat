(*******************************************************)
(*    Sujet : Somme des n premiers entiers impaires    *)
(*******************************************************)


(** Version simple *)
let rec f_simple n =
	if n = 0 then 0
	else 2 * (n - 1) + 1 + f_simple (n - 1)
;;


(** Version récursive terminale *)
let f_term n =
	let rec aux n res =
		if n = 0 then 0
		else aux (n - 1) (res + 2 * n - 1)
	in
	aux n 0
;;


(** Version mathématique optimale *)
let f_maths n = n * n;;

(* Explication de la version mathématique optimale
	1 + 3 + 5 + ... + (2𝒏 - 1) = [ (2𝒏 - 1 + 1)𝒏 ] / 2 = 𝒏 × 𝒏
*)