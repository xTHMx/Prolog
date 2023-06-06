% Aluno: Tulio Miranda

%fatos
progenitor(pamela, bob).
progenitor(pamela, sam).
progenitor(tom, bob).
progenitor(tom, sam).
progenitor(tom, liz).
progenitor(bob, ana).
progenitor(bob, patricia).
progenitor(patricia, jim).

mulher(pamela).
mulher(liz).
mulher(ana).
mulher(patricia).

homem(bob).
homem(tom).
homem(sam).
homem(jim).

%perguntas
pai(X,Y) :-
    homem(X), progenitor(X,Y).

mae(X,Y) :-
    mulher(X), progenitor(X,Y).

netas(X,Y) :-
    mulher(Y), progenitor(X,Z), progenitor(Z,Y).

irmaos(X,Y) :-
    pai(Z,X), pai(Z,Y), X \= Y ; mae(Z,X), mae(Z,Y), X \= Y.

avôs(X,Y) :-
    progenitor(X,Z), progenitor(Z,Y).

ancestrais_femininos(X,Y) :- progenitor(X,Y).
ancestrais_femininos(X,Y) :-
    mulher(X), progenitor(X,Z), ancestrais_femininos(Z,Y).

ancestrais_masculinos(X,Y) :- progenitor(X,Y).
ancestrais_masculinos(X,Y) :-
    homem(X), progenitor(X,Z), ancestrais_masculinos(Z,Y).


