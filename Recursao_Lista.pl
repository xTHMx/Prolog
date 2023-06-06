%perguntas
pertence(X, [X|_]).      % "_" incognita n declarada
pertence(X, [_|T]) :-
    pertence(X,T).

ultimo(X,[X]).
ultimo(X, [_|T]) :- 	% "_" substitui o H para evitar erro de variavel n declarada
    ultimo(X, T).

penultimo(X,[X,_]). 	% uma lista de 2 elem. deve conter o X independente do outro
penultimo(X, [_|T]) :-
    penultimo(X, T).

