(***********************************************)
(*    Sujet : Somme des entiers d'une liste    *)
(***********************************************)


(** Version simple *)
let rec f_simple liste = match liste with
	| [] -> 0
	| element::suite -> element + f_simple suite
;;


(** Version récursive terminale *)
let f_terminale liste =
	let rec aux res l = match l with
		| [] -> res
		| element::suite -> aux (res + element) suite
	in
	aux 0 liste
;;