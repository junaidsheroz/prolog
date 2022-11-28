male(harivansh).
male(amitabh).
male(abhishek).
female(teji).
female(jaya).
female(shweta).
female(aish).
female(aradhya).

parent(harivansh, amitabh).
parent(teji, amitabh).
parent(amitabh, shweta).
parent(amitabh, abhishek).
parent(jaya, shweta).
parent(jaya, abhishek).
parent(abhishek, aradhya).
parent(aish, aradhya).

mother(M,C) :- female(M), parent(M,C).
son(S,P) :- male(S), parent(P,S).
daughter(D,P) :- female(D), parent(P,D).
grandfather(GF,C) :- male(GF),parent(GF,M),parent(M,C).
grandmother(GM,C) :-female(GM),parent(GM,M),parent(M,C).
brother(B,S) :- male(B),parent(P,B),parent(P,S).
sister(S,B) :-female(S),parent(P,S),parent(P,B).
helollo.
