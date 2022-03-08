(***********************************************************)
(*    Sujet : Une liste d'entiers est-elle croissante ?    *)
(***********************************************************)

(** Version simple *)
let rec f_simple liste = match liste with
	| [] | [_] -> true
	| el::suite -> el <= List.hd suite && f_simple suite
;;

(** Version récursive terminale *)
let f_term liste =
	let rec aux l res = match l with
		| [] | [_] -> res
		| el::suite -> aux suite (res && el <= List.hd suite)
	in
	aux liste true
;;