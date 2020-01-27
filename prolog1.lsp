domains
  s = symbol
predicates
  male(s)
  female(s)
  nondeterm parent(s,s)
  nondeterm mother(s,s)
  nondeterm father(s,s)
  nondeterm  brother(s,s)
  nondeterm sister(s,s)
  nondeterm child(s,s)
  nondeterm grandmother(s,s)
  nondeterm grandfather(s,s)
  nondeterm uncle(s,s)
clauses
  male(gadji).
  male(murad).
  male(ivan).
  male(sasha).
  female(nina).
  female(sveta).
  parent(gadji, nina).
  parent(gadji, murad).
  parent(gadji, vanya).
  parent(sveta, nina).
  parent(sveta, murad).
  parent(sveta, vanya).
  parent(ivan, sasha).
  parent(nina, sasha).
  
  child(A,B):-
  	parent(B,A), A<>B.
  	
  mother(A,B):-
  	parent(A,B), female(A), A<>B.
  
  father(A,B):-
  	parent(A,B), male(A), A<>B.
  
  brother(A,B):-
  	parent(Z,A), parent(Z,B), male(A), A<>B.
  	
  sister(A,B):-
  	parent(Z,A), parent(Z,B), female(A), A<>B. 
  	
  grandmother(A,B):-
  	child(Y,A), child(B,Y), female(A), A<>B.
  
  grandfather(A,B):-
  	child(Y,A), child(B,Y), male(A), A<>B.
  
  uncle(A,B):-
  	child(B, Y), brother(A,Y), A<>B.
