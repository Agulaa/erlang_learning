-module(introduction).
-export([length/1,factorial/1, fib/1, ifactorial/1, ifib/1, even/1, member/2, add_to_list/2, sum/1, decrease/2, lessthan5/1]).

%factorial recursively   
factorial(1)->1;
factorial(N)->N*factorial(N-1).

%factorial iteratively 
ifactorial(1)->1; 
ifactorial(N)->ifactorial(N,1,1). 

%even parity 
even(0)->even; 
even(1) ->uneven;
even(N)->even(N-2). 

%N-number, A-storage, R-result 
ifactorial(0,R,A)->R; 
ifactorial(N,R,A)->
	ifactorial(N-1,R*A, A+1). 
	
%fibonacci recursively
fib(0)->0;
fib(1)->1;
fib(N)->
    fib(N-1)+fib(N-2).
	
%fibonacci iteratively
ifib(0)->0; 
ifib(1)->1; 
ifib(N)->ifib(N,0,1). 

ifib(1,A,R)->R; 
ifib(N,A,R)-> ifib(N-1, R, A+R). 


%member to list 
member(H,[H])->true; 
member(X,[H])->false; 
member(H, [H|_])->true; 
member(N,[H|T])-> member(N,T). 

%add to list 
add_to_list([],[])->[]; 
add_to_list([],H)->H; 
add_to_list([H|T],L)->[H|add_to_list(T,L)].  

%list length 
length([])->0;
length(List)-> length(List, 0). 

length([H|T], N) -> length(T, N+1); 
length([], N) -> N. 

%sum
sum([])->0; 
sum(L)->sum(L,0).

sum([],R)->R; 
sum([H|T],R)->sum(T,H+R). 

%decrease by N 
decrease([],N)->[]; 
decrease([H|T], N)-> [H-N|decrease(T,N)]. 

%number of number less than 5 in list 
lessthan5([])->0; 
lessthan5(L)-> lessthan5(L,0). 

lessthan5([],R)->R; 
lessthan5([H|T], R)when  H >= 5 -> lessthan5(T,R); 
lessthan5([H|T], R)when  H =< 5 -> lessthan5(T,R+1). 

%0 at end 
zero([])->[]; 
zero([H|T]) when H == 0 -> zero(T)++[H]; 
zero([H|T]) when H =/= 0 -> [H|zero(T)]. 

izero([])->[]; 
izero(L)->izero(L,[],[]). 

izero([],L1,L2)->add_to_list(L1,L2); 
izero([H|T], L1, L2) when H == 0 -> izero(T, L1, L2++[H]); 
izero([H|T], L1, L2) when H =/= 0 -> izero(T,L1++[H], L2). 


%1 at beginning 
one([])->[]; 
one([H|T]) when H == 1 -> [H|one(T)]; 
one([H|T]) when H =/= 1 -> one(T)++[H]. 

ione([])->[]; 
ione(L)->ione(L,[],[]). 

ione([],L1,L2)->add_to_list(L1,L2); 
ione([H|T], L1, L2) when H == 1 -> ione(T, L1++[H], L2); 
ione([H|T], L1, L2) when H =/= 1 -> ione(T,L1, L2++[H]). 

%reverse 
reverse([])->[]; 
reverse([H|T])->reverse(T)++[H].  

ireverse([])->[];
ireverse(L)->ireverse(L, []). 

ireverse([],L)->L; 
ireverse([H|T],L) -> ireverse(T,[H|L]). 


