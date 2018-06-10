-module(cwicz).
-export([palindrom/1, palindrom_/1, reverse_/1,  reg/1]).




%reverse
reverse_(L)->reverse_(L, []).

reverse_([],L)->L; 
reverse_([H|T], L)->reverse_(T,[H|L]).

%palindrom 2
palindrom_([])->false; 
palindrom_(_)->true; 
palindrom_(Term) ->
	T = reverse_(Term),
	if Term =:= T -> true;
	true -> false
	end. 
			

			
%palindrom 

palindrom([])-> false; 
palindrom(_)->true; 
palindrom(Term) -> Term =:= lists:reverse(Term). 







%akceptor języka regularnego 
% 1(00|01)*110(11|10)*00

reg([1,1,1,0,0,0])->true; 
reg([1,1,1,0|T])->reg2(T); 
reg([1|T])->reg1(T); 
reg(_)->false.


reg1([0,0,1,1,0|T])-> reg2(T); 
reg1([0,1,1,1,0|T])->reg2(T); 
reg1([0,0|T])->reg1(T); 
reg1([0,1|T])->reg1(T); 
reg1(_)->false. 

reg2([0,0])-> true; 
reg2([1,1|T])->reg2(T); 
reg2([1,0|T])->reg2(T); 
reg2(_)->false. 


%wyrazenia arytmetyczne 



