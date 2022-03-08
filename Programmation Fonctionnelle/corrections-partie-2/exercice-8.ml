(****************************************)
(*    Sujet : Concaténer deux listes    *)
(****************************************)

(** Version simple *)
let rec f_simple l1 l2 = match l1 with
	| [] -> l2
	| el1::suite1 -> el1::(f_simple suite1 l2)
;;

(** Version récursive terminale *)
let f_term l1 l2 =
	let rec aux l1 laux l2 = match l1 with
		| [] -> (
			match laux with
			| [] -> l2
			| el_a::suite_a -> aux [] suite_a (el_a::l2)
		)
		| el1::suite1 -> aux suite1 (el1::laux) l2
	in
	aux l1 [] l2
;;