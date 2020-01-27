domains
  s = symbol
  i = integer
  r = real
predicates
  movie(s)
  point(s, r)
  price(s,i)
  nice_movie(s)

clauses
  movie(vedmak).
  movie(gameofthethrones).
  point(vedmak, 5).
  point(gameofthethrones, 9).
  price(vedmak, 80). 
  price(gameofthethrones, 50).
  nice_movie(X):-
  	movie(X), point(X, money), price(X, mark), money<=100, mark>7.
