(*************************************************************)
(*    Sujet : Y'a-t'il plus de 0 ou de 1 dans une liste ?    *)
(*************************************************************)

(** Exercice 6 *)
let nb_occurences x liste =
	let rec aux l occurences = match l with
		| [] -> occurences
		| el::suite -> begin
			if el = x then aux suite (occurences + 1)
			else aux suite occurences
		end
	in
	aux liste 0
;;

(** Version simple *)
let f_simple liste = (nb_occurences 0 liste) > (nb_occurences 1 liste);;

(** Version simple plus optimisée, attention, ce n'est pas de la récursivité terminale ! *)
let f_simple_opti_1 liste =
	let rec alt l = match l with
		| [] -> (0, 0)
		| el::suite -> begin
			let (n0, n1) = alt suite in
			if el = 0 then (n0 + 1, n1)
			else if el = 1 then (n0, n1 + 1)
			else (n0, n1)
		end
	in
	let (n0, n1) = alt liste in
	n0 > n1
;;

(** Autre version simple plus optimisée, toujours pas de la récursivité terminale ! *)
let f_simple_opti_2 liste =
	let rec alt l = match l with
		| [] -> 0
		| el::suite -> begin
			let d = alt suite in
			if el = 0 then d + 1
			else if el = 1 then d - 1
			else d
		end
	in
	alt liste > 0
;;

(** Version récursive terminale *)
let f_term x liste =
	let rec aux l res = match l with
		| [] -> res
		| el::suite -> aux suite (
			if el = 0 then res + 1
			else if el = 1 then res - 1
			else 0
		)
	in
	aux liste 0 > 0
;;