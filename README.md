# Personalidades históricas

**Ejemplo de clase con functores y polimorfismo**

### Primera parte
Queremos averiguar cuanto tiempo paso desde la muerte de una personalidad.

tiempoDesdeSuMuerte(Persona,Tiempo).

diasSin(Persona,Dias).

aniversariosEnAgosto(Alguien).

todosLosPrimerosDeMesHayAniversarios...


### Segunda parte

```
realiza(jesusDeNazareth,milagro(convertirAguaEnVino),fecha(1,1,30)).
realiza(jesusDeNazareth,milagro(caminarSobreElAgua),fecha(2,8,31)).
realiza(diego,gol(inglaterra,mundial),fecha(22,6,1986)).
realiza(lio,gol(polonia,mundial)),fecha(21,11,2022)).
realiza(juanDomingo,medida(nacionalizar,ferrocarril, 10000),fecha(1,3,1948)).
realiza(juanDomingo,medida(creacion,universidadObrera, 4000),fecha(19,8,1948)).
```

si hace milagros se considera divino

es nac&pop si toma medidas de nacionalizacion o hace goles a grandes potencias 

es aclamado si realiza una accion que conmueve a mucha gente (más de 1000)
* un milagro conmueve a 5000 personas
* los goles en el mundial, 10 veces la cantidad de habitantes del correpondiente pais y 2 veces si es en otra competencia.
* En las medidas de gobierno se conmueve a los beneficiarios de la medida. 




