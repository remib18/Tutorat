(****************************************************)
(*    Sujet : Nombre d'occurences dans une liste    *)
(****************************************************)


(** Version simple *)
let rec f_simple x liste = match liste with
	| [] -> 0
	| el::suite -> begin
		let res = f_simple x suite in
		if el = x then 1 + res
		else res
	end
;;

(** Version récursive terminale *)
let f_term x liste =
	let rec aux l occurences = match l with
		| [] -> occurences
		| el::suite -> begin
			if el = x then aux suite (occurences + 1)
			else aux suite occurences
		end
	in
	aux liste 0
;;