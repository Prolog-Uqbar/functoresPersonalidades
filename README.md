# Personalidades históricas

**Ejemplo de clase con functores y polimorfismo**

### Primera parte

Tenemos información de cuándo murieron diferentes personalidades

```
murio(Persona,Fecha).
```
También conocemos la fecha actual.

Queremos averiguar:

* Cuánto tiempo paso desde la muerte de una personalidad
  - Cantidad entera de años, redondeando.
  - La cantidad exacta de días.

* Qué persona murió antes que otra. 
  - Contemplando sólo el año.
  - Contemplando fecha exacta.

* De qué personalidades su aniversario es en Agosto. 

* Si es cierto que todos los primero de mes hay algún aniversario. (Variante: para un día en particular del mes)

* De todas las personas que se conocen ¿Quién hace mas tiempo que se murió?

### Segunda parte

```
realiza(jesusDeNazareth,milagro(convertirAguaEnVino),fecha(1,1,30)).
realiza(jesusDeNazareth,milagro(caminarSobreElAgua),fecha(2,8,31)).
realiza(diego,gol(inglaterra,mundial),fecha(22,6,1986)).
realiza(lio,gol(polonia,mundial),fecha(21,11,2022)).
realiza(juanDomingo,medida(nacionalizar,ferrocarril, 10000),fecha(1,3,1948)).
realiza(juanDomingo,medida(creacion,universidadObrera, 4000),fecha(19,8,1948)).
```

si hace milagros se considera divino

es nac&pop si toma medidas de nacionalizacion o hace goles a grandes potencias 

es aclamado si realiza una accion que conmueve a mucha gente (más de 10000)
* un milagro conmueve a 5000 personas
* los goles en el mundial, 10 veces la cantidad de habitantes del correpondiente pais y 2 veces si es en otra competencia.
* En las medidas de gobierno se conmueve a los beneficiarios de la medida. 




