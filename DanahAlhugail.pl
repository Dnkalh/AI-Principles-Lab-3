% Lab 3 - Danah Alhugail - Knowledge Base

% Gender of family members
male(faisal).
male(mohammed).
male(khalid).
male(abdullah).

female(dana).
female(maryam).
female(lama).
female(sara).
female(reem).

% Parent relationships
parent(dana, lama).
parent(faisal, lama).

parent(maryam, khalid).
parent(mohammed, khalid).

parent(lama, sara).
parent(khalid, sara).

parent(lama, abdullah).
parent(khalid, abdullah).

parent(lama, reem).
parent(khalid, reem).


% Family Rules
father(X, Y) :- male(X), parent(X, Y).

mother(X, Y) :- female(X), parent(X, Y).

sister(X, Y) :- female(X), parent(P, X), parent(P, Y), X \= Y.

brother(X, Y) :- male(X), parent(P, X), parent(P, Y), X \= Y.