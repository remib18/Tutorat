(***************************************)
(*    Sujet : Puissance d'un entier    *)
(***************************************)


(** Version simple *)
let rec f_simple x n =
	if n = 0 then 1
	else n * f_simple x (n - 1)
;;

(** Version récursive terminale *)
let f_term x n =
	let rec aux res x n =
		if n = 0 then res
		else aux (res * x) x (n - 1)
	in
	aux 1 x n
;;

let rec f_opti_simple x n =
	if n = 0 then 1
	else begin
		if n mod 2 = 0
		then f_opti_simple (x * x) (n / 2)
		else x * f_opti_simple (x * x) ((n - 1) / 2)
	end
;;

let f_opti_term x n =
	let rec aux x n res =
		if n = 0 then res
		else begin
			if n mod 2 = 0
			then aux (x * x) (n / 2) res
			else aux (x * x) ((n - 1) / 2) (res * x)
		end
	in
	aux x n 1
;;