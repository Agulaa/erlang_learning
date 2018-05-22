-module(sort).
-export([s_insert/1, qsort/1, min/1, select/1]).

%insertsort 
s_insert([])->[]; 
s_insert([H])->[H]; 
s_insert([H|T])->insert(H,s_insert(T)). 

insert(X, [])->[X]; 
insert(X,[H|T]) when X =< H -> [X,H|T]; 
insert(X,[H|T]) when X > H -> [H|insert(X,T)]. 

%quicksort 
qsort([])->[]; 
qsort([Pivot|T])->qsort([X || X<-T, X < Pivot]) ++ [Pivot] ++ qsort([X || X <-T, X >= Pivot]). 

%selectsort 
select([])->[];
select(L)-> select(L,[]). 

select([],L)->L; 
select(L1,L2)-> 
	Min = min(L1), 
	L3 = del(Min, L1),
	select(L3, L2++[Min]). 
	
	
%min 
min([H|T])-> min(H,T). 

min(Min, [H|T]) when Min > H -> min(H,T); 
min(Min, [H|T]) when Min =< H -> min(Min,T); 
min(Min, [])->Min.
 
%del element 
del(H,[])->[]; 
del(H,[H])->[]; 
del(X, [H|T]) when X == H -> T; 
del(X, [H|T]) when  X =/= H -> [H|del(X,T)]. 