# Aprovechamiento de las vulnerabilidades de seguridad

Antes de entrar en detalles, comencemos por resumir algunos términos clave que debe conocer.

Las vulnerabilidades de seguridad son cualquier tipo de defecto en software o hardware. Un programa escrito para aprovechar una vulnerabilidad de seguridad conocida se denomina exploit. Un ciberdelincuente puede utilizar un exploit contra una vulnerabilidad para llevar a cabo un ataque, cuyo objetivo es obtener acceso a un sistema, a los datos que aloja o a un recurso específico.

## Vulnerabilidades de hardware

Las vulnerabilidades de hardware se presentan a menudo mediante defectos de diseño del hardware. Por ejemplo, el tipo de memoria denominada RAM consiste básicamente en muchos condensadores (un componente que puede contener una carga eléctrica) instalados muy cerca unos de otros. Sin embargo, pronto se descubrió que, debido a su proximidad, los cambios aplicados a uno de estos condensadores podrían influir en los condensadores vecinos. Por esta falla de diseño, se generó un exploit llamada Rowhammer. Al acceder repetidamente (martillar) a una fila de memoria, el exploit Rowhammer desencadena interferencias eléctricas que eventualmente corrompen los datos almacenados dentro de la RAM.

**Meltdown y Spectre-.** Los investigadores de seguridad de Google descubrieron Meltdown y Spectre, dos vulnerabilidades de hardware que afectan a casi todas las unidades de procesamiento central (CPU) lanzadas desde 1995 en computadoras de escritorio, computadoras portátiles, servidores, teléfonos inteligentes, dispositivos inteligentes y servicios en la nube.

Los atacantes que explotan estas vulnerabilidades pueden leer toda la memoria de un sistema determinado (Meltdown), así como los datos manejados por otras aplicaciones (Spectre). Las explotaciones de vulnerabilidad Meltdown y Spectre se denominan ataques de canal lateral (la información se obtiene de la implementación de un sistema informático). Tienen la capacidad de comprometer grandes cantidades de datos de memoria porque los ataques se pueden ejecutar varias veces en un sistema con muy pocas posibilidades de que se produzca un bloqueo u otro error.

![](https://skillsforall.com/content/i2cs/7.1/courses/content/m2/es-XL/assets/a8331083b7a28100c391ed33ecf9bdc4aca48a9f.png)

Las vulnerabilidades de hardware son específicas de los modelos de dispositivos y generalmente no se ven atacadas por intentos comprometedores aleatorios. Si bien las vulnerabilidades de hardware son más comunes en ataques altamente dirigidos, la protección tradicional contra malware y una buena seguridad física son una protección suficiente para el usuario cotidiano.

## Vulnerabilidades de software

Las vulnerabilidades de software suelen ser provocadas por errores en el sistema operativo o en el código de la aplicación.

![](https://skillsforall.com/content/i2cs/7.1/courses/content/m2/es-XL/assets/d8c2bc86c33e0abed9e65f09ec691ef50ce3b9e0.png)

La vulnerabilidad SynFUL Knock permitió a los atacantes obtener el control de los enrutadores de nivel empresarial, como los enrutadores ISR de Cisco, desde los cuales podían monitorear todas las comunicaciones de red e infectar otros dispositivos de red.

Esta vulnerabilidad se introdujo en el sistema cuando una versión alterada de IOS se instaló en los routers. Para evitar esto, verifique siempre la integridad de la imagen de IOS descargada y limite el acceso físico al equipo solo al personal autorizado.

## Categorización de vulnerabilidades de software

La mayoría de las vulnerabilidades de seguridad del software se dividen en varias categorías principales.

**Desbordamiento del buffer-.** Los búferes son áreas de memoria asignadas a una aplicación. Se produce una vulnerabilidad cuando los datos se escriben más allá de los límites de un búfer. Al cambiar los datos más allá de los límites de un búfer, la aplicación puede acceder a la memoria asignada a otros procesos. Esto puede provocar un bloqueo del sistema o comprometer los datos, o proporcionar una escalada de privilegios.

![](https://skillsforall.com/content/i2cs/7.1/courses/content/m2/es-XL/assets/e3a11f600245ed0107323cc592db6b78a32fd24b.png)

**Entrada no valida-.** Los programas a menudo requieren la entrada de datos, pero estos pueden tener contenido malicioso, diseñado para obligar al programa a comportarse de forma no deseada.

Por ejemplo, considere un programa que recibe una imagen para procesarla. Un usuario malintencionado podría crear un archivo de imagen con dimensiones de imagen no válidas. Las dimensiones creadas maliciosamente podrían forzar al programa a asignar búferes de tamaños incorrectos e imprevistos.

**Condiciones de carrera-.** Esta vulnerabilidad describe una situación en la que la salida de un evento depende de salidas ordenadas o programadas. Una condición de carrera se convierte en una fuente de vulnerabilidad cuando los eventos ordenados o cronometrados requeridos no ocurren en el orden correcto o en el momento adecuado.

**Debilidad en las parcticas de seguridad-.** Los sistemas y los datos confidenciales se pueden proteger mediante técnicas como la autenticación, la autorización y el cifrado. Los desarrolladores deben ceñirse al uso de técnicas de seguridad y bibliotecas que ya hayan sido creadas, probadas y verificadas y no deben intentar crear sus propios algoritmos de seguridad. Es probable que solo introduzcan nuevas vulnerabilidades.

**Problemas de control de acceso-.** El control de acceso es el proceso de controlar quién hace qué y va desde administrar el acceso físico al equipo hasta dictar quién tiene acceso a un recurso, como un archivo, y qué pueden hacer con él, como leer o cambiar el archivo. Muchas vulnerabilidades de seguridad se generan por el uso incorrecto de los controles de acceso.

Casi todos los controles de acceso y las prácticas de seguridad pueden superarse si un atacante tiene acceso físico al equipo objetivo. Por ejemplo, independientemente de la configuración de permisos de un archivo, un hacker puede omitir el sistema operativo y leer los datos directamente del disco. Por lo tanto, para proteger la máquina y los datos que contiene, se debe restringir el acceso físico y se deben utilizar técnicas de cifrado para proteger los datos contra robos o corrupción.

## Actualizaciones de software

El objetivo de las actualizaciones de software es mantenerse actualizado y evitar el aprovechamiento de vulnerabilidades. Microsoft, Apple y otros productores de sistemas operativos lanzan parches y actualizaciones casi todos los días y las empresas u organizaciones responsables de las aplicaciones, como los navegadores web, las aplicaciones móviles y los servidores web, suelen actualizarlas.

A pesar de que las organizaciones se esfuerzan mucho en encontrar y reparar vulnerabilidades de software, se descubren nuevas vulnerabilidades con regularidad. Es por eso que algunas organizaciones utilizan investigadores de seguridad de terceros que se especializan en encontrar vulnerabilidades en el software, o realmente invierten en sus propios equipos de pruebas de penetración dedicados a buscar, encontrar y parchear las vulnerabilidades del software antes de que puedan ser explotadas.

Project Zero de Google es un gran ejemplo de esta práctica. Después de descubrir una serie de vulnerabilidades en varios software utilizados por los usuarios finales, Google formó un equipo permanente dedicado a encontrar vulnerabilidades de software. Puede obtener más información sobre la investigación de seguridad de Google aquí.

## ¿Qué opinas?

Esto le ha hecho pensar en algunas de las vulnerabilidades que pueden existir en @Apollo. Después de investigar un poco, ha notado algunos problemas potenciales.

¿Puede identificar en qué categoría se encuentra cada una de estas vulnerabilidades? Tiene la oportunidad de ganar algunos puntos de defensor aquí y proteger aún más a @Apollo, así que tómese su tiempo.

- Al comenzar en @Apollo, se le envió su contraseña de red por correo electrónico en texto sin formato y no se le pidió que la cambiara

      Debilidad en las prácticas de seguridad

- Los empleados anteriores aún tienen acceso a la base de datos de clientes de @Apollo

       Problemas de control de acceso

- Los nuevos usuarios pueden iniciar sesión en su cuenta @Apollo, incluso si se han registrado con una dirección de correo electrónico con un formato incorrecto

      Entrada no validada

¡Es correcto! ¡Excelente trabajo!

Ha identificado correctamente los posibles problemas de seguridad y ha dado un paso más para proteger a @Apollo de los ataques. Recuerde:

Enviar información confidencial por correo electrónico, como contraseñas en texto sin formato, es extremadamente arriesgado y es una debilidad en las prácticas de seguridad. Esta información debe, como mínimo, estar cifrada.
Los empleados anteriores no deben tener acceso a la información de los clientes cuando abandonan una empresa. Se trata de un problema grave de control de acceso.
Los nuevos usuarios deben validarse antes de que se pueda hacer cualquier otra cosa con sus datos. El uso de una dirección de correo electrónico con formato incorrecto para iniciar sesión es un error de entrada no validado.
Compruebe su progreso haciendo clic en el icono del escudo en la esquina superior derecha de la pantalla.

**_A continuación..._**
Debe estar constantemente al tanto de las vulnerabilidades de seguridad a su alrededor para poder responder en consecuencia. Pero recuerde que el panorama de la ciberseguridad evoluciona continuamente. Por ejemplo, el criptojacking, un tipo de ciberataque utilizado para extraer criptomonedas, va en aumento.
