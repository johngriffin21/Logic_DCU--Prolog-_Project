perfect(N):- pNumber(N,0,1).

pNumber(Number,Number,Number):- !.

pNumber(Num,Total,Counter):-
    isfactor(Counter,Num),
    Counter1 is Counter + 1,
    Total1 is Total + Counter,
    pNumber(Num,Total1,Counter1).


pNumber(Num,Total,Counter):-
    notfactor(Counter,Num),
    Counter1 is Counter + 1,
    pNumber(Num,Total,Counter1).

isfactor(Counter,Num):-
          Counter < Num,
          0 is mod(Num, Counter).
notfactor(Counter,Num):-
          Counter < Num,
          not(0 is mod(Num, Counter)).
