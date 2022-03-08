(*********************************)
(*    Sujet : La fonction map    *)
(*********************************)


(** Version simple *)
let rec f_simple f liste = match liste with
	| [] -> []
	| el::suite -> (f el) :: (f_simple f suite)
;;