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
mes(fecha(_,M,_),M ).
dia(fecha(D,_,_),D ).

aniversariosEnAgosto(Alguien):-
    murio(Alguien,fecha(_,8,_)).

murioAntes(Fulano,Mengano):-
    murio(Fulano,F1),
    murio(Mengano,F2),
    esAntes(F1,F2).

%esAntes(F1,F2):-
%    anio(F1,A1),
%    anio(F2,A2),
%    A1 < A2.

fechaTotal(fecha(D,M,A), FechaTotal):-
    FechaTotal is A * 10000 + M * 100 + D.

esAntes2(F1,F2):-
    fechaTotal(F1, FechaTotal1),
    fechaTotal(F2, FechaTotal2),
    FechaTotal1 < FechaTotal2.


esAntesEspecifico(F1,F2):-
    anio(F1,A1),
    anio(F2,A2),
    mes(F1,M1),
    mes(F2,M2),
    dia(F1,D1),
    dia(F2,D2),
    A1 < A2,
    M1 < M2,
    D1 < D2.

esAntesCompleto(fecha(D1, M1, A1), fecha(D2, M2, A2)) :-
    A1 =< A2,
    M1 =< M2,
    D1 < D2.

esAntes(fecha(_, _, A1),fecha(_, _, A2)):-  A1 < A2.
esAntes(fecha(_, M1, A),fecha(_, M2, A)):-  M1 < M2.
esAntes(fecha(D1, M, A),fecha(D2, M, A)):-  D1 < D2.


esUnMes(X):-between(7,8,X).
esUnDia(X):-between(1,31,X).

todosLosPrimerosDeMesHayAniversarios():-
    forall(esUnMes(Mes), murio(_,fecha(1,Mes,_))).

todosLosTalDiaDeMesHayAniversarios(Dia):-
    esUnDia(Dia),
    forall(esUnMes(Mes), murio(_,fecha(Dia,Mes,_))).

realiza(jesusDeNazareth,milagro(convertirAguaEnVino),fecha(1,1,30)).
realiza(jesusDeNazareth,milagro(caminarSobreElAgua),fecha(2,8,31)).
realiza(diego,gol(inglaterra,mundial),fecha(22,6,1986)).
realiza(lio,gol(polonia,mundial),fecha(21,11,2022)).
realiza(dimaria,gol(uruguay,eliminatoria),fecha(21,11,2021)).
realiza(juanDomingo,medida(nacionalizar,ferrocarril, 10000),fecha(1,3,1948)).
realiza(juanDomingo,medida(creacion,universidadObrera, 4000),fecha(19,8,1948)).
realiza(unprofe,apruebaATodos,nunca).

poblacion(inglaterra, 800).
poblacion(polonia, 400).
poblacion(uruguay, 400).

granPotencia(Pais):- poblacion(Pais,Poblacion), Poblacion > 50.


esDivino(Alguien):-
    realiza(Alguien,milagro(_),_).

esNYP(Alguien):-
    granPotencia(Pais),
    realiza(Alguien,gol(Pais,_),_).

esNYP(Alguien):-
    realiza(Alguien,medida(nacionalizar,_,_),_).


esAclamado2(Alguien):-
    realiza(Alguien, Accion,_),
    conmueve(Accion,Cantidad),
    Cantidad > 1000.

conmueve(milagro(_),5000).

conmueve(gol(Pais,Torneo),Cant):-
    poblacion(Pais,Poblacion),
    multiplicador(Torneo,Multiplicador),
    Cant is Poblacion * Multiplicador.
conmueve(medida(_,_,Beneficiarios),Beneficiarios).

multiplicador(Torneo,2):-Torneo \= mundial.
multiplicador(mundial,10).






esAclamado(Alguien):-
    realiza(Alguien,milagro(_),_).

esAclamado(Alguien):-
    realiza(Alguien,gol(Pais,mundial),_),
    poblacion(Pais,P),
    P * 10 > 10000.

esAclamado(Alguien):-
    realiza(Alguien,gol(Pais,Torneo),_),
    Torneo \= mundial,
    poblacion(Pais,P),
    P * 2 > 10000.

esAclamado(Alguien):-
    realiza(Alguien,medida(_,_,Beneficiarios),_),
    Beneficiarios > 10000.

