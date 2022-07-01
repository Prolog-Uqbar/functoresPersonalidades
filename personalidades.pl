murio(juanDomingo, fecha(1, 7, 1974)).
murio(jesusDeNazareth, fecha(3, 3, 33)).
murio(diego,fecha(25,11,2020)).
murio(donJulio,fecha(3,8,2020)).
%murio(yabran,??).
%
fechaActual(fecha(1,7,2022)).

tiempoDesdeSuMuerte(Persona,Tiempo):-
    murio(Persona,FechaDefuncion),
    fechaActual(FechaActual),
    anio(FechaDefuncion,AnioDefuncion),
    anio(FechaActual,AnioActual),
    Tiempo is AnioActual - AnioDefuncion.

anio(fecha(_,_,A),A ).

aniversariosEnAgosto(Alguien):-
    murio(Alguien,fecha(_,8,_)).

murioAntes(Fulano,Mengano):-
    murio(Fulano,F1),
    murio(Mengano,F2),
    esAntes(F1,F2).

esAntes(F1,F2):-
    anio(F1,A1),
    anio(F2,A2),
    A1 < A2.




