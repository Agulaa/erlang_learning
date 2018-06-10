-module(onp).
-export([onp/1]).

onp(L) -> 
		L1 = string:tokens(L, " "), 
		onp(L1, []). 
		  


onp(["+"|T],[H1,H2| T1]) -> onp(T,[ H1 + H2 | T1]); 
onp(["-"|T],[H1,H2| T1]) -> onp(T,[ H1 - H2 | T1]); 
onp(["*"|T],[H1,H2| T1]) -> onp(T,[ H1 * H2 | T1]); 
onp(["/"|T],[H1,H2| T1]) -> onp(T,[ H1 / H2 | T1]); 
onp([H|T], Stos)-> 
	{Int, _} = string:to_integer(H), 
	onp(T, [Int|Stos]); 
onp([],[H]) -> [H]. 


