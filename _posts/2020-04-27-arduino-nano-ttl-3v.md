---
layout: post
current: post
cover: assets/images/2020-04-27-arduino-nano-ttl-3v/arduino-before.jpeg
navigation: True
title: "Arduno Nano funcionando a 3.3V y 16Mhz"
date: 2020-04-26 10:00:00
tags: [tecnologia]
class: post-template
subclass: 'post tag-tecnologia'
author: eltallerdelhuerto
comments: true
published: true
---

Cuando el rendimiento de las baterías es algo clave, podemos usar Arduino a 3.3V y optimizar su uso.

En este post vamos a poner como ejemplo un Arduino Nano que no es la versión oficial, por lo que el diseño puede ser diferente.

## Problema
Al trabajar con el módulo SIM800L para la comunicación GPRS hemos de tener en cuenta que el nivel lógico de este módulo es 3.3V. Por lo que la línea de 5v de Arduino Nano no nos va a valer.

El módulo SIM800 va a funcionar a 5v (siempre que haya una batería propia para SIM800L, que veremos en otro post), pero **vamos a quemar nuestro módulo GSM al usar el canal RX a 5v provenientes de Arduino.**

Además si queremos usar una cómoda batería de litio 18650 o LiPo de 3,7V para alimentar Arduino, mantener un step-up es muy costoso, y vamos a tener que cargarla cada poco tiempo. Esto es debido a que el step-up va a pedir a la batería en todo momento, aunque tengamos nuestro Arduino en modo sleep.

No recomiendo nada su uso, por experiencia.

Y por experiencia también, he quemado un par de módulos al trabajar con 5v a nivel lógico, cuando en sus specs exponía que había que usarlos a 3.3V. Y esto ha sido por el USB, al cargar los sketch y alimentarlo posteriormente para las pruebas conectado y comunicándose.

## Solución
Para evitar este problema, podemos hacer algo muy simple, **eliminar el diodo que conecta la línea de 5v del USB a nuestro Arduino Nano**. De este modo, vamos a poder controlar qué voltaje le aplicamos, en mi caso 3.7v provenientes de una batería de litio 18650.

![Arduino Nano antes con el diodo que conecta la linea de 5v del USB conectado](assets/images/2020-04-27-arduino-nano-ttl-3v/arduino-before.jpeg "Arduino Nano antes con el diodo que conecta la linea de 5v del USB conectado")

Mira el círculo negro que hay en la imagen de arriba, ese es el diodo que vamos a remover.

![Arduino Nano después con el diodo que conecta la linea de 5v del USB eliminado](assets/images/2020-04-27-arduino-nano-ttl-3v/arduino-after.jpeg "Arduino Nano después con el diodo que conecta la linea de 5v del USB eliminado")

De nuevo, mira el círculo negro donde se ve como el diodo ha sido eliminado.

Otra opción es añadir un divisor de voltaje o conversor lógico entre nuestro Arduino y los módulos que usemos a 3.3V si queremos no quemarlos.
Pero en ambos casos, vamos a tener el problema de que si alimentamos Arduino a 3.7v y hacemos un cambio lógico a 3.3v, suponiendo que el cambio lo hacemos desde 5v el voltaje resultante no será 3.3v sino menos, por lo que **el módulo no funcionará a no ser que mantengamos la alimentación de Arduino Nano a 5v.**

Es decir, 5v a 3.3v, la diferencia es 1.7v. Pero 3.7v - 1.7 son 2v.

**Recordemos. Si realizamos este cambio, tenemos que alimentar Arduino mientras lo tenemos conectado a USB para que funcione**.
## Un poco fuera de especificación

Cuando digo que estamos fuera de la especificación me refiero a que el módulo Arduino Nano va a trabajar a 18Mhz con un voltaje de 3,7v cuando debería de ser un voltaje de 5v. 

**Pero en la práctica funciona relativamente bien y es algo sencillo de hacer.**

Aunque normalmente para trabajar a esos voltajes se suele usar una frecuencia más baja, 8Mhz.

## Conclusión

**La mejor solución para optimizar las baterías de 3.7v es comprar una placa de desarrollo Arduino que trabaje con el oscilador a 8Mhz.** De este modo, la línea de corriente de 5v del USB va a ser convertida a 3.3v y vamos a trabajar a unas frecuencias más bajas y más fiables. Esto es debido a que normalmente a 8Mhz, el voltaje que se necesita es de 3.3v.

Algunos Arduino de bajo coste que trabajan a 3.3v son los Arduino Pro mini a 8Mhz y 3.3v.