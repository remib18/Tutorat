(**************************************)
(*    Sujet : Longueur d'une liste    *)
(**************************************)


(** Version simple *)
let rec f_simple liste = match liste with
	| [] -> 0
	| _::suite -> 1 + f_simple suite
;;


(** Version récursive terminale *)
let f_terminale liste =
	let rec aux res l = match l with
		| [] -> res
		| _::suite -> aux (res + 1) suite
	in
	aux 0 liste
;;