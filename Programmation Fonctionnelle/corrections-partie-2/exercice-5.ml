(**********************************)
(*    Sujet : La fonction find    *)
(**********************************)


(** Version simple *)
let rec f_simple liste = match liste with
	| [] -> failwith "La liste est vide, elle ne possède pas de maximum."
	| [x] -> x (* équivaut à | x::[] -> x *)
	| el::suite -> begin
		let max = f_simple suite in
		if el > max then el
		else max
	end
;;

(** Version récursive terminale *)
let f_term liste =
	let rec aux max l = match l with
		| [] -> failwith "Cas impossible à atteindre."
		| x::[] -> if x > max then x else max
		| el::suite -> begin
			if el > max
			then aux el suite
			else aux max suite
		end
	in match liste with
		| [] -> failwith "La liste est vide, elle ne possède pas de maximum."
		| x::[] -> x
		| el::suite -> aux el liste
;;