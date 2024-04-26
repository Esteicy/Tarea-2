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

Con la aproximación de Elmore se obtienen los retardos que se muestran a continuación:

1. Compuerta NOR de 30

Rise

![alt text](imagenes_simple/ElmoreRise.png)

$tpdr=\dfrac{R}{12}\cdot 24C + \dfrac{2R}{12}\cdot 36C = 8\tau$

$tcdr=\dfrac{2R}{12}\cdot 26C = \dfrac{13}{3}\tau$

Fall

![alt text](imagenes_simple/ElmoreFall.png)

$tpdf=\dfrac{R}{6}\cdot 26C=\dfrac{13}{3}\tau$

$tcdf=\dfrac{13}{6}\tau$

2. Compuerta NOR de 122

Rise

![alt text](imagenes_simple/ElmoreRise122.png)

$tpdr=\dfrac{R}{49}\cdot 98 + \dfrac{2R}{49}\cdot 147C = 8\tau$

$tcdr=\dfrac{2R}{49}\cdot 147C = 6\tau$

Fall

![alt text](imagenes_simple/ElmoreFall122.png)

$tpdf=\dfrac{R}{6}\cdot 147C= \dfrac{49}{2}\tau$

$tcdf=\dfrac{49}{4}\tau$

Ahora sumando todos los tiempos para obtener los finales:

$t_{pdr}=8\tau+8\tau=16\tau$

$t_{cpr}=\dfrac{13\tau}{3}+6\tau=\dfrac{31}{3}$

$t_{pdf}=\dfrac{13}{3}\tau+\dfrac{49}{2}\tau=\dfrac{173}{6}\tau$

$t_{cdf}=6\tau+\dfrac{49}{4}\tau=\dfrac{73}{4}\tau$

## Compuerta compleja

### Definición de compuertas

Usando la función lógica base, se puede obtener la compuerta compleja or-or-and-invert + invert mostrada a continuación.

![alt text](imagenes_complejo/Esquematico.png)

### Definición de tamaño de compuertas

Con este circuito se calcula el esfuerzo lógico de la compuerta y el retardo.

$$H = 500/30 = 16.7 $$
$$G = 6/3 = 2$$
$$D = 2*16.7+5 = 38.4\tau$$

Y el tamaño de las compuertas necesarias para cumplir con las especifiaciones:

$$z= \frac{500*1}{5.779} = 86.52\lambda$$

$$x= \frac{86.52*2}{5.779} = 30\lambda$$

Dando como resultado la siguiente figura del circuito con sus respectivos tamaños:

![alt text](imagenes_complejo/size.png)

### Definición del tamaño de los transistores

El circuito lógico anterior a nivel de transistores se muestra a continuación con sus respectivos tamaños calculados:

![alt text](imagenes_complejo/Transistores.png)

### Tiempos de retardo de Elmore

A continuación, es necesario calcular los tiempos de retardo mediante la aproximación de Elmore.

![alt text](imagenes_complejo/Tpdr.png)

$tpdr=(\dfrac{R}{10})(20C)+(\dfrac{2R}{147C}) = 31.4\tau$

![alt text](imagenes_complejo/Tcdr.png)

$tcdr=\dfrac{147}{2}\tau$

![alt text](imagenes_complejo/tpdf.png)

$tpdf= (\dfrac{R}{10})(10C) + (\dfrac{2R}{10})(147C) = 30.4\tau$

![alt text](imagenes_complejo/tcdf.png)

$tcdf=\dfrac{147}{2}\tau$







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

### Tiempos de retardo

Con diferentes entradas de estímulo se obtienen los siguientes tiempos de retardo de propagación y de contaminación:

$t_{pdr}$

![alt text](imagenes_simple/tpdr.png)

$t_{pdf}$

![alt text](imagenes_simple/tpdf.png)

$t_{cdr}$

![alt text](imagenes_simple/tcdr.png)

$t_{cdf}$

![alt text](imagenes_simple/tcdf.png)

### Caminos de Euler y diagrama de palitos

Para un circuito de compuertas simples, no es necesario hacer un análisis de caminos de Euler, debido a que cada cada compuerta en individual, por otro lado, para el diagrama de palitos se muestra el de una compuerta NOR, como está compuesto de 3 NOR el circuito simple, cada compuerta utiliza uno igual para cada una. Este se muestra a continuación:

![alt text](imagenes_simple/diagramaPalitos.png)

### Layout de compuerta
El layout de la compuerta NOR se muestra en la siguiente figura:

![alt text](imagenes_simple/layout.png)

Y el layout después de pasar todas las verificaciones:

![alt text](imagenes_simple/layout_verificiones.png)

### Tiempos de retardo con capacitancias parásitas

Estos tiempos son los resultados de la medición después de realizar el layout del circuito:

|Retardo|Contaminación (ps)|Propagación (ps)|
|--|--|--|
|rise|232|285|
|fall|247|283|

## Compuerta compleja

### Esquemático 

![alt text](imagenes_complejo/esquematicoSim.png)

### Tiempos de retardo

|Tiempo de retardo|Contaminación (ps)|Progración (ps)|
|--|--|--|
|rise|82.9|93.9|
|fall|107|136|

### Caminos de Euler y diagrama de palitos

Para los caminos de Euler se tienen los de Pull Up y Pull Down como se muestra a continuación:

|Pull Up|Pull Down|
|--|--|
|![alt text](imagenes_complejo/pullup.png)|![alt text](imagenes_complejo/pulldown.png)|

De lo anterior se obtiene que el orden de las conexiones en el diagrama de palitos son D-C-A-B.

![alt text](imagenes_complejo/complejo_palitos.jpg)

### Layout de compuerta
A continuación se muestra como queda el circuito en simulación del layout:

![alt text](imagenes_complejo/layoutComplejo.png)

Y así se muestra cuando pasa por todas las verificaciones de la simulación:
![alt text](imagenes_complejo/layoutverificado.png)

### Tiempos de retardo con capacitancias parásitas

|Tiempo de retardo|Contaminación (ps)|Progración (ps)|
|--|--|--|
|rise|149|194|
|fall|170|186|

# Bilbiografía
[1] N. Weste and D. Harris, CMOS VLSI Design: A Circuits and Systems Perspective, 4 edition. Boston: 
Addison-Wesley, 2010.
