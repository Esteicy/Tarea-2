# Tarea-2 Introducción al diseño de circuitos integrados

# Teoría

En este informe se plantean dos diseños estáticos de CMOS para la siguiente función lógica: 

F= (A+B)(C+D)

En donde uno de los diseños consta de compuertas simples y el otro diseño será con compuerta compleja.
Por otra parte, se solicita que el tamaño máximo de cada entrada sea de 30 $\lambda$ y que la salida debe ser de 500 $\lambda$. [1]

## Compuertas simples

### Definición de compuertas

Para poder definir cuáles compuertas se van a utilizar se debe tomar en cuenta que se utiliza la lógica invertida, y así es como resulta el diseño:
![design](imagenes_simple/diseno_compuertas.png)

### Definición de tamaño de compuertas

Para definir el tamaño de las compuertas se procede con los cálculos de las siguientes ecuaciones:

$F=GH = \dfrac{5}{3}\cdot\dfrac{5}{3}\cdot\dfrac{500}{30} = 46.296$

$f=F^{1/2} = \sqrt{46.296}=6.804$

Para la segunda compuerta de la derecha:

$C_{in}=\dfrac{C_{out}\cdot g_{i}}{f}$

$y=\dfrac{500\cdot\frac{5}{3}}{6.804}=122.47$

Para cualquiera de las compuertas de la izquierda

$x=\dfrac{122.47\cdot\dfrac{5}{3}}{6.804}=30$

Y así se vería el circuito con el tamaño de cada compuerta:

![gatesize](imagenes_simple/gatesize.png)

### Definición del tamaño de los transistores

Como una NOR debe tener un tamaño de 4 en PMOS y de 1 en el NMOS para un total de 5 de entrada, entonces la distribución ahora será la misma pero la suma de ambas debe dar 30 en el caso de las compuertas de la izquierda y 122 para la compuerta de la derecha, dando como resultado:

![size](imagenes_simple/size.png)

### Diseño del esquemático

Como cada compuerta NOR está separada, solo se requiere del diseño de una NOR de 2 entradas y los tamaños cambian, así queda de la siguiente manera:

![alt text](imagenes_simple/esquematico_simple.png)

### Tiempos de retardo

$tpdr=16\tau$

$tpdf=\dfrac{173}{6}\tau$

$tcdr=\dfrac{31}{3}\tau$

$tcdr=\dfrac{73}{4}\tau$

## Compuerta compleja

Usando la función lógica base, se puede obtener la compuerta compleja or-or-and-invert + invert mostrada a continuación.

![alt text](Esquematico.png)

El cual se vería de la siguiente forma a nivel de transistores.

![alt text](Transistores.png)

Luego se obtuvo el esfuerzo lógico de la compuerta y el retardo.

$$H = 500/30 = 16.7 $$
$$G = 6/3 = 2$$
$$D = 2*16.7+5 = 38.4\tau$$

Además, se calculó el tamaño de las compuertas necesarias para cumplir con las especifiaciones.

$$z= \frac{500*1}{5.779} = 86.52\lambda$$

$$x= \frac{86.52*2}{5.779} = 30\lambda$$

A continuación, es necesario calcular los tiempos de retardo mediante la aproximación de Elmore.

![alt text](Tpdr.png)

tpdr

# Simulación
## Compuertas simples

### Esquemático 

Para el tamaño de las compuertas, solo se multiplica los tamaños mínimos de los transistores (NMOS de 220n y PMOS de 440n) por los tamaños que se calcularon. Y resulta el siguiente esquemático en simulación:

Compuerta de 30

![alt text](imagenes_simple/sim_esquematico30.png)

Compuerta de 122

![alt text](imagenes_simple/sim_esquematico122.png)

Una vez teniendo las compuertas creadas en esquematico, se procede a armar el circuito de compuertas completo, como se muestra en la siguiente figura:

![alt text](imagenes_simple/compuertas.png)

### Tiempos de retraso

Con diferentes entradas de estímulo se obtienen los siguientes tiempos de retraso de propagación y de contaminación:

$t_{pdr}$

![alt text](imagenes_simple/tpdr.png)

$t_{pdf}$

![alt text](imagenes_simple/tpdf.png)

$t_{cdr}$

![alt text](imagenes_simple/tcdr.png)

$t_{cdf}$

![alt text](imagenes_simple/tcdf.png)

### Layout de compuerta
El layout de la compuerta NOR se muestra en la siguiente figura:

![alt text](imagenes_simple/layout.png)

Y el layout después de pasar todas las verificaciones:

![alt text](imagenes_simple/layout_verificiones.png)

## Compuerta compleja

# Bilbiografía
[1] N. Weste and D. Harris, CMOS VLSI Design: A Circuits and Systems Perspective, 4 edition. Boston: 
Addison-Wesley, 2010.
