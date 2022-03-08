(***************************************)
(*    Sujet : Renverser deux listes    *)
(***************************************)

(** Version simple *)
let rec f_simple liste = match liste with
	| [] -> []
	| el::suite -> (f_simple suite)@[el]
;;

(** Version récursive terminale *)
let f_term liste =
	let rec aux l res = match l with
		| [] -> res
		| el::suite -> aux suite (el::res)
	in
	aux liste []
;;