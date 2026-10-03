% ARTI 303 - Lab 6 - Prolog Programming
% Lab Task 2 - Build and Run the Menu
% Student: Shahd Algharyafe
% Added: one running game (Football) and one non-running game (Chess)

% ---------- main menu ----------
menu :-
    nl, write('Welcome to the Prolog Game Selection'), nl, nl,
    write('Please choose any number'), nl,
    write('--------------------------'), nl,
    write('1 - to choose running games'), nl,
    write('2 - to choose non-running games'), nl,
    write('3 - to exit'), nl, nl,
    write('-->> Enter option: '),
    read(X),
    play(X).

% ---------- what each main-menu choice does ----------
play(1) :-
    nl,
    write('Welcome to Running Games'), nl,
    write('-------------------------'), nl,
    write('1 - to choose to play with bat'), nl,
    write('2 - to choose to play with racket'), nl,
    write('3 - to choose to play with bare hands'), nl,
    write('4 - to choose to play with your feet'), nl,      % NEW
    write('-->> Enter option: '),
    read(Y),
    ropt(Y),
    continue.

play(2) :-
    nl,
    write('Welcome to Non-Running Games'), nl,
    write('--------------------------'), nl,
    write('1 - to choose to play individual'), nl,
    write('2 - to choose to play in a group'), nl,
    write('3 - to choose to play on a board'), nl, nl,      % NEW
    write('-->> Enter option: '),
    read(Z),
    opt(Z),
    continue.

play(3) :-
    fin.

play(_) :-
    nl,
    write('Sorry, you chose the wrong option...'), nl, nl,
    continue.

% ---------- running games ----------
ropt(1) :- nl, write('--( You want to play cricket )--'), nl, nl.
ropt(2) :- nl, write('--( You want to play Tennis )--'), nl, nl.
ropt(3) :- nl, write('--( You want to play Rugby )--'), nl, nl.
ropt(4) :- nl, write('--( You want to play Football )--'), nl, nl.     % NEW
ropt(_) :- nl, write(' -->> You chose the wrong option...  :( '), nl.  % catch-all stays last

% ---------- non-running games ----------
opt(1) :- nl, write('--<< You want to play Tai chi >>--'), nl, nl.
opt(2) :- nl, write('--<< You want to play Volleyball >>--'), nl, nl.
opt(3) :- nl, write('--<< You want to play Chess >>--'), nl, nl.     % NEW
opt(_) :- nl, write('Wrong selection...   :( '), nl.                 % catch-all stays last

% ---------- go round again, or stop ----------
continue :-
    nl, write('Do you want to go back to the main menu (yes/no)? '),
    read(Reply),
    ( Reply = yes -> menu ; fin ).

fin :-
    nl, write('===< End >==='), nl.
