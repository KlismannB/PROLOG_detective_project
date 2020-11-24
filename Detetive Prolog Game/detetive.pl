/* POSSIBLE ROOMS FOR THE CRIMES TO HAPPEN */
room(kitchen).
room(living_room).
room(bedroom).
room(bathroom).
room(balcony).
room(basement).
room(elevator).
room(lavatory).
room(roof).

/* POSSIBLE CRIME WEAPONS */
weapon(knife).
weapon(pistol).
weapon(iron_bar).
weapon(rope).
weapon(vase).
weapon(extinguisher).

/* POSSIBLE SUSPECTS */
person(lucas).
person(marcos).
person(maria).
person(carmen).
person(thais).
person(vinicius).
person(cecilia).
person(leticia).
person(victor).

/* PERSONS AND PLACES PLACED */
place(kitchen,lucas).
place(kitchen,knife).
place(living_room,marcos).
place(living_room,vase).
place(bedroom,maria).
place(bedroom,pistol).
place(bathroom,carmen).
place(balcony,thais).
place(basement,vinicius).
place(basement,rope).
place(elevator,cecilia).
place(elevator,extinguisher).
place(lavatory,leticia).
place(roof,victor).
place(roof,iron_bar).

/* MOVEMENT OF THE PERSONS */

/* MURDER */
murder(lucas, maria, knife).

/* MAIN METHODS */
get_first_hint(true) :-
    write('p = It was on the kitchen').

get_gender(true) :-
     write('q = It was a man').

get_victim(true) :-
    write('r = The victim\'s name starts with the letter M').

get_key_hint(true) :-
    write('The letter q is a ~q').
     
/* START THE GAME */
start(true) :-
    write('The game is about to begin!'), nl,nl ,
    write('One of the following information is false'), nl, nl,
    get_gender(true), nl,
    get_first_hint(true), nl,
    get_victim(true).
