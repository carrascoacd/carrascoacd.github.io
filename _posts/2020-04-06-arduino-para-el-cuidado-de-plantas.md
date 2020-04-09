---
layout: post
current: post
cover: assets/images/2020-04-06-arduino-para-el-cuidado-de-plantas/cover.jpg
navigation: True
title: Arduino para el cuidado de plantas
date: 2020-03-26 10:00:00
tags: [tecnologia]
class: post-template
subclass: 'post tag-tecnologia'
author: eltallerdelhuerto
published: true
---

No solo se trata solo de un microcontrolador que permite automatizar los cuidados de las plantas, Arduino es mucho más que eso.

Yo uso Arduino como la pieza principal a la hora de controlar la humedad, riego o temperatura de mis plantas, pero he hablado que es un microcontrolador, veamos qué es realmente. **Un microcontrolador se trata de un circuito integrado que básicamente ejecuta operaciones programadas en base a unas entradas y unas salidas de datos.**

### No tengo ni idea de qué es un circuito integrado
Si ya has leído sobre este tema, puedes saltarte este apartado.

En otro post hablaré detalladamente sobre ello, pero podemos imaginar un circuito como una red de carreteras contectadas entre sí de forma cerrada. Los vehículos, son mensajeros, que circulan en las carreteras y transportan información. Información de si abrir o no una válvula de riego o de cuanta temperatura tenemos en el ambiente, por ejemplo. 

La información que transportan los mensajeros la obtienen de **entradas** hacia el circuito y hacia dónde la envían lo llamaremos **salidas**. Lo que comunmente en inglés podemos ver como I/O (Input - Output).
Algunos ejemplos elementos que generan mensajes en las entradas:
- Sensor de humedad. Genera el mensaje % de humedad.
- Sensor de luminosidad. Genera el mensaje % de luminosidad

Algunos elemplos de elementos que que reciben los mensajes de la salida:
- Válvula de riego. Lee el mensaje "abrir" o "cerrar"
- Motor rotativo. Lee el mensaje "arrancar" o "parar"
- Una lámpara. Lee el mensaje "encender" o "apagar"

Por lo tanto, un microcontrolador es un pequeño circuito integrado que dice qué hacer, cuando, cómo y dónde en base a nuestros mensajes. Es un mini cerebro, un **procesador**. Y todo ello se lo decimos nosotros, los programadores. Sí tú vas a ser un programador, aunque seguro que ya lo eres. 

Mira esto, un ejemplo de programa en tu calendario del móvil:
- Cuando sean las 8am de la mañana
- Recordarme que tengo que coger la bolsa de deporte de la mesa

Y si lo aplicamos al mundo de las plantas:

- Si el sensor de humedad envía un mensaje diciendo que la humedad es 20%
- Abre la válvula de riego durante 10 minutos

Por lo tanto, las dos frases, lo que se conoce como código, las guardaremos en la **memoria** de nuestro microcontrolador para que las ejecute cuando sea necesario. No voy a entrar en detalle de los tipos de memoria que tenemos disponibles con Arduino en este post, pero lo veremos más en detalle.

## Mucho más que un simple microcontrolador
Cuando la gente pensamos o buscamos sobre Arduino vemos esto

![Arduino Uno. Circuito integrado](assets/images/2020-04-06-arduino-para-el-cuidado-de-plantas/arduino-uno.jpg "Arduino Uno. Circuito integrado")

Pero Arduino es más que un simple circuito integrado. Lo que vemos en la imagen es la parte tangible, la parte visible de Arduino, la placa. Sin embargo, **Arduino se trata del software, el hardware, el equipo de desarrollo, la comunidad de usuarios, e incluso el espíritu y la filosofía de las personas alrededor.**

Otro de los motivos por los que Arduino es tan potente, es porque **el diseño del hardware de la placa**, lo que hemos visto en la imagen, **es open source**. Ello hace que podamos encontrar placas a muy bajo coste de otros fabricantes, que por experiencia no se comportan tan bien en proyectos con puesta en producción, pero con propósito didáctico o bien para trabajos caseros es más que suficiente.

Por todos esos motivos decidirse por esta tecnología puede ser un acierto. Vamos a tener infinidad de ayuda y documentación, pero también hay otras alternativas que veremos.

## ¿A que no sabías esto?
Mira que curioso, "arduino" es un nombre masculino e italiano que significa "amigo fuerte". Fue creado en Italia, en Ivrea, ¿sabías que su nombre proviene de un rey? El rey Arduin de Ivrea, que ejerció su reinado hace miles de años.

## Y cómo podemos aplicar todo esto al mundo de las plantas
Lo veremos poco a poco en el blog, pero la cantidad de aplicaciones es infinita, tantas como ideas tengamos. Ya he comentado anteriormente alguna. Estamos hablando de un pequeño cerebro, que le podemos decir que ejecute acciones de forma programada. Por lo que algunas aplicaciones son:
- Medir la humedad
- Medir la temperatura del suelo
- Medir la temperatura del aire
- Medir la intensidad viento
- Permitir el bombeo de agua
- Aplicar abono
- Y más!

Y todo eso lo podemos hacer en base a lo que ya sabemos, déjame explicarme. El caso más simple es, imaginemos que nuestra Hortensia, que se trata de una planta con grandes requerimientos hídricos, le falta agua, podemos dejar que nuestro microcotronador gestione eso. Sobre todo en los meses más calurosos, donde incluso podemos perder a la planta.

## ¡Vamos con un ejemplo!
Vamos a construir un pequeño circuito que será la base para poder entender de qué estamos hablando, antes de ello necesitaremos ir a https://www.circuito.io/app

Es una app muy intuitiva y que nos permite aprender sin necesidad de gastar dinero en hardware y ver los resultados. La verdad que está muy bien. 

- Inicialmente aparecerá el Arduino Uno la mesa de trabajo
- En el buscador, buscamos "soil" y arrastramos a la mesa de trabajo el "Soil moisture sensor". Nuestro sensor de humedad.
- Y a continuación buscamos "led" y arrastramos.

En este punto ya tenemos nuestro circuito montado, ¿a que ha sido fácil? Guarda esta referencia porque puede que te sea util a partir de ahora.

## Aunque nunca va a sustituir mis cuidados
A las personas que nos gusta la naturaleza, nos apasiona ir al campo, tocar la tierra y regar nuestas bonitas plantas. Podemos ser un poco reticentes a la tecnología. Pero la tecnología no viene para quitarnos ese trabajo, simplemente nos ayuda en los momentos más críticos: unas vacaciones, unos meses muy ajetreados, olas de calor... en general aquel momento que sea rutinario o difícil y podamos automatizar.

Si a ello le sumamos las técnicas tradicionales podemos conseguir una sensación mucho mejor en todo lo que hacemos.

La tecnología nos permite cuidar mejor de nuestras plantas, dedicando el tiempo de la mejor forma posible para sus cuidados y para el cuidado de nuestros suelos.