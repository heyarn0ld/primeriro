soma(A, B, C) :- C is A + B.
%Linha diferente

largura(sala, 4).
largura(quarto, 3).
comprimento(sala, 5).
comprimento(quarto, 2).
area(X, Y) :- largura(X, Larg), comprimento(X, Comp), Y is Larg * Comp.


idade(joao, 10).
idade(rafael, 15).
maisVelho(A, B) :- idade(A, X), idade(B, Y), X > Y.

anoNasc(P, A):- idade(P, Idade), A is 2016 - Idade.

fatorial(1,1).
fatorial(Valor, X):- fatorial(Vlr, Total), Vlr is Valor - 1, X is Total * Vlr.


%del(X,[X|T], T).
%del(X,[H|T], L) :- append(_,H,L), del(X, T, L).

del(X,[X|T], T).
del(X,[H|T], [H|T1]) :- del(X, T, T1). 

add_ultimo(X,[], [X]).
add_ultimo(X,[H|T], [H|T1]):- add_ultimo(X, T, T1).


pertence(X, []) :- 2 is 3.
pertence(X,[_|T]) :- pertence(X, T).


prefixo([],[]).
prefixo([],[_|_]).
prefixo([H1|T1],[H1|T2]):- prefixo(T1,T2).

concatenar([], L, L).
concatenar([H|T], L,[H| R]):- concatenar(T, L, R).

%soma(L1, S).

soma([], 0).
soma([H|T], Resp):- soma(T, Parcial), Resp is H + Parcial.

conta([], 0).
conta([H|T], Nro) :- conta(T, Parcial), Nro is Parcial + 1.

fat(1,1).
fat(X, Total) :- Menos1 is X - 1, fat(Menos1, Parcial), Total is X * Parcial.

deletar(X,[X|T], T).
deletar(X,[H|T], [H|L1]):- deletar(X,T,L1).

%sufixo(L, [H|T]):- 

del_todas(X,[],[]).
del_todas(X,[H|T], L1):- del_todas(X,T,[H|T]).
del_todas(X,[X|T], L1):- del_todas(X,T,L1).

inverter([],[]).
inverter([H|T],L1) :- inverter(T,L2), append(L2,[H],L1).

separa([],[],[]).
separa([H|T],[H|L2], LI) :- 0 is H mod 2, separa(T, L2, LI).
separa([H|T],LP,[H|L2]) :-  1 is H mod 2, separa(T, LP, L2).

% nth_membro(N, L, X, Ac).
 nth_membro(0, [X|_], X, []).
 nth_membro(N, [H|T], X, [H|Ac]):- Menos is N - 1, nth_membro(Menos, T, X, Ac).
