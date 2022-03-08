(**********************************)
(*    Sujet : La fonction find    *)
(**********************************)


(** Version simple *)
let rec f_simple predicat liste = match liste with
	| [] -> failwith "Aucun element ne satisfait le prédicat."
	| el::suite -> begin
		if predicat el then el
		else f_simple predicat suite
	end
;;