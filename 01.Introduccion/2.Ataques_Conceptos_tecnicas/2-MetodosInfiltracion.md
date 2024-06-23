# Métodos de infiltración

## Ingeniería social

La ingeniería social es la manipulación a las personas para que realicen acciones o divulguen información confidencial. Los ingenieros sociales con frecuencia dependen de la disposición de las personas para ayudar, pero también se aprovechan de sus vulnerabilidades. Por ejemplo, un atacante llamará a un empleado autorizado con un problema urgente que requiere acceso inmediato a la red y apelará a la vanidad o la codicia del empleado o invocará la autoridad mediante el uso de técnicas de eliminación de nombres para obtener este acceso.

**Pretexto-.** Esto es cuando un atacante llama a una persona y miente en el intento de obtener acceso a datos privilegiados.

Por ejemplo, fingir que necesita los datos personales o financieros de una persona para confirmar su identidad.

**Infiltración (tailgating)-.** Esto es cuando un atacante sigue rápidamente a una persona autorizada a un lugar seguro.

**Una cosa por otra (quid pro quo)-.** Esto sucede cuando un hacker solicita información personal de una parte a cambio de algo, como un regalo gratis.

## Denegación de servicio

Los ataques de denegación de servicio (DoS) son un tipo de ataque de red que es relativamente sencillo de llevar a cabo, incluso por parte de un atacante no cualificado. Un ataque DoS da como resultado cierto tipo de interrupción del servicio de red a los usuarios, los dispositivos o las aplicaciones.

- _Cantidad abrumadora de tráfico_ Esto es cuando se envía una gran cantidad de datos a una red, a un host o a una aplicación a una velocidad que no pueden procesar. Esto ocasiona una disminución de la velocidad de transmisión o respuesta o una falla en un dispositivo o servicio.

- _Paquetes malicioso formateados_ Un paquete es una colección de datos que fluye entre una computadora o aplicación de origen y una receptora a través de una red, como Internet. Cuando se envía un paquete con formato malicioso, el receptor no puede manejarlo.

Por ejemplo, si un atacante reenvía paquetes que contienen errores o paquetes formateados incorrectamente que no pueden ser identificados por una aplicación, esto hará que el dispositivo receptor funcione muy lentamente o se bloquee.

Los ataques de DoS se consideran un riesgo importante porque pueden interrumpir fácilmente la comunicación y causar una pérdida significativa de tiempo y dinero.

## DoS distribuido

Un ataque DoS distribuido (DDoS) es similar a un ataque DoS pero proviene de múltiples fuentes coordinadas. Por ejemplo:

Un atacante crea una red (botnet) de hosts infectados llamados zombies, que son controlados por sistemas de manejo.
Las computadoras zombis constantemente analizan e infectan más hosts, creando más y más zombis.
Cuando está listo, el hacker proporciona instrucciones a los sistemas manipuladores para que los botnet de zombies lleven a cabo un ataque de DDoS

## Botnet

Una computadora bot se infecta generalmente por visitar un sitio web, abrir un elemento adjunto de correo electrónico o abrir un archivo de medios infectado. _Una botnet es un grupo de bots, conectados a través de Internet, que pueden ser controlados por un individuo o grupo malintencionado_. Puede tener decenas de miles, o incluso cientos de miles, de bots que normalmente se controlan a través de un servidor de comando y control.

Estos bots se pueden activar para distribuir malware, lanzar ataques DDoS, distribuir correo electrónico no deseado o ejecutar ataques de contraseña por fuerza bruta. Los ciberdelincuentes suelen alquilar botnets a terceros con fines nefastos.

Muchas organizaciones, como Cisco, fuerzan las actividades de red a través de filtros de tráfico de botnet para identificar cualquier ubicación de botnet.

![image](https://skillsforall.com/content/i2cs/7.1/courses/content/m2/es-XL/assets/3d4405f87b1589fca5237f49d8f539d18b6ef698.svg)

Los bots infectados intentan comunicarse con un host de comando y control Internet
El filtro de botnet de Firewall de Cisco es una función que detecta el tráfico procedente de dispositivos infectados con el código de botnet malicioso.

El servicio Cisco Security Intelligence Operations (SIO) basado en la nube envía filtros actualizados al firewall que coinciden con el tráfico de las nuevas botnets conocidas.
Las alertas se envían al equipo de seguridad interno de Cisco para notificarles sobre los dispositivos infectados que generan tráfico malicioso para que puedan prevenirlos, mitigarlos y remediarlos.

## Ataques en el camino

Los atacantes en ruta interceptan o modifican las comunicaciones entre dos dispositivos, como un navegador web y un servidor web, ya sea para recopilar información de uno de los dispositivos o para hacerse pasar por uno de ellos.

Este tipo de ataque también se conoce como ataque de hombre en el medio o de hombre en el móvil.

**HOMBRE EN EL MEDIO(MITM)**
Un ataque MiTM ocurre cuando un ciberdelincuente toma el control de un dispositivo sin que el usuario lo sepa. Con ese nivel de acceso, el atacante puede interceptar y capturar información sobre el usuario antes de retransmitirla a su destino. Estos tipos de ataques se utilizan a menudo para robar información financiera.

Hay muchos tipos de malware que poseen capacidades de ataque MiTM.

![image](https://skillsforall.com/content/i2cs/7.1/courses/content/m2/es-XL/assets/cc8b74d97569e36e267dee783e10d4bd2dd89f46.png)

**HOMBRE EN EL MOVIL(MITMO)**
Una variación del hombre en el medio, el MitMo es un tipo de ataque utilizado para tomar el control de un dispositivo móvil. Cuando está infectado, el dispositivo móvil recibe instrucciones de filtrar información confidencial del usuario y enviarla a los atacantes. ZeUS es un ejemplo de paquete de malware con capacidades MitMO. Permite a los atacantes capturar silenciosamente los mensajes SMS de verificación en dos pasos que se envían a los usuarios.

![](https://skillsforall.com/content/i2cs/7.1/courses/content/m2/es-XL/assets/b64951ce38f438e19e166c1d90b9533d144e98f4.png)

_Hay muchas maneras en que los ciberdelincuentes pueden infiltrarse en sus sistemas y redes, pero es importante que sepa cuáles son._

¡Vamos a seguir adelante!

## Envenenamiento SEO

Probablemente hayas oído hablar de la optimización de motores de búsqueda o SEO que, en términos simples, se trata de mejorar el sitio web de una organización para que gane una mayor visibilidad en los resultados de los motores de búsqueda.

Entonces, ¿qué crees que podría ser el envenenamiento por SEO?

![](https://skillsforall.com/content/i2cs/7.1/courses/content/m2/es-XL/assets/b993ff473310ef7b2d9bea3f0c14ca4901b0683b.png)

Los motores de búsqueda como Google funcionan presentando una lista de páginas web a los usuarios en función de su consulta de búsqueda. Estas páginas web se clasifican de acuerdo con la relevancia de su contenido.

Aunque muchas empresas legítimas se especializan en la optimización de sitios web para mejorar su posición, los atacantes utilizan el SEO para hacer que un sitio web malicioso aparezca más arriba en los resultados de la búsqueda. Esta técnica se denomina envenenamiento SEO.

El objetivo más común del envenenamiento de SEO es aumentar el tráfico a sitios maliciosos que pueden albergar malware o intentar ingeniería social.

## Descifrado de contraseñas de Wi-Fi

Disfrutas de tu almuerzo en la cantina cuando un colega se te acerca. Parecen angustiados.

Explican que parece que no pueden conectarse a la red Wi-Fi pública en su teléfono y preguntan si tiene la contraseña de Wi-Fi privada a mano para que puedan comprobar que su teléfono funciona.

¿Cómo respondería a esto?

- «Claro.» «Es XGFF76dB».

- La respuesta correcta : «Mmm...» «No estoy seguro de que se nos permita usar la red Wi-Fi privada.» «Déjame consultarlo primero con mi gerente»

- «Sí, por supuesto.» «Dame tu teléfono y te lo pondré»

Este colega podría estar llevando a cabo un ataque de ingeniería social, manipulándolo para que proporcione la contraseña utilizada para proteger la red inalámbrica privada de la organización. Nunca puedes ser demasiado cuidadoso y, por responder correctamente, has ganado algunos puntos de defensor. ¡Bien hecho!

Los hackers tienen otras técnicas bajo la manga. Algunos usan ataques de fuerza bruta, probando posibles combinaciones de contraseñas para intentar adivinar una contraseña. Otros pueden identificar contraseñas sin cifrar escuchando y capturando los paquetes enviados en la red. Esto se denomina rastreo de red. Si la contraseña está cifrada, el atacante aún puede revelarla mediante una herramienta de decodificación de contraseñas.

## Ataques de contraseña

La introducción de un nombre de usuario y una contraseña es una de las formas más populares de autenticarse en un sitio web. Por lo tanto, descubrir su contraseña es una forma fácil para que los ciberdelincuentes accedan a su información más valiosa.

_Pulverizacion de contraseñas-._ Esta técnica intenta obtener acceso a un sistema «rociando» algunas contraseñas de uso común en un gran número de cuentas. Por ejemplo, un ciberdelincuente utiliza «Password123» con muchos nombres de usuario antes de volver a intentarlo con una segunda contraseña de uso común, como «qwerty».

Esta técnica permite que el perpetrador permanezca sin ser detectado, ya que evita los bloqueos frecuentes de la cuenta.

_Ataques de diccionario-._ Un hacker intenta sistemáticamente todas las palabras de un diccionario o una lista de palabras de uso común como contraseña en un intento de ingresar a una cuenta protegida con contraseña.

_Ataques por fuerza bruta-._ Son la forma más simple y más utilizada de obtener acceso a un sitio protegido con contraseña. Los ataques de fuerza bruta ven a un atacante utilizando todas las combinaciones posibles de letras, números y símbolos en el espacio de contraseñas hasta que lo hacen bien.

_Ataques arcoiris-._ Las contraseñas de un sistema informático no se almacenan como texto sin formato, sino como valores con hash (valores numéricos que identifican datos de forma única). Una tabla arcoíris es un gran diccionario de valores hash precalculados y las contraseñas a partir de las cuales se calcularon.

A diferencia de un ataque de fuerza bruta que tiene que calcular cada hash, un ataque de arco iris compara el hash de una contraseña con los almacenados en la tabla rainbow. Cuando un atacante encuentra una coincidencia, identifica la contraseña utilizada para crear el hash.

_Interceptacion de trafico-._ El texto sin formato o las contraseñas sin cifrar pueden ser leídas fácilmente por otras personas y máquinas al interceptar las comunicaciones.

Si almacena una contraseña en texto claro y legible, cualquier persona que tenga acceso a su cuenta o dispositivo, ya sea autorizado o no, podrá leerlo.

## Tiempos de craqueo

Parece que los hackers están intentando todo para descifrar la contraseña de Wi-Fi privada de @Apollo. ¡Tenemos que asegurarnos de que la contraseña sea lo suficientemente fuerte como para resistir su ataque!

Eche un vistazo a las siguientes contraseñas. Haz clic en los números para ponerlos en el orden correcto de acuerdo con el tiempo que crees que le llevaría a un atacante descifrar cada uno usando fuerza bruta, donde 1 es la cantidad de tiempo más corta y 4, la más alta.

1. Contraseña
2. trawberry
3. K4km9n2R
4. H$1gh#7iD@3

Llevar a cabo ataques de fuerza bruta implica que el atacante intente varias combinaciones posibles en un intento de adivinar la contraseña. Estos ataques generalmente involucran un archivo de lista de palabras, un archivo de texto que contiene una lista de palabras de un diccionario. Un programa como Ophcrack, L0phtCrack, THC Hydra, RainbowCrack o Medusa probará cada palabra y combinación común hasta que encuentre una coincidencia.

Debido a que los ataques de fuerza bruta toman tiempo, las contraseñas complejas toman mucho más tiempo adivinar.

## Amenazas persistentes avanzadas

Los atacantes también logran infiltrarse a través de amenazas persistentes avanzadas (APT): una operación avanzada, sigilosa, de múltiples fases y a largo plazo contra un objetivo específico. Por estas razones, un atacante individual a menudo carece de las habilidades, los recursos o la persistencia para realizar APTs.

Debido a la complejidad y al nivel de habilidad requerido para llevar a cabo un ataque de este tipo, una APT generalmente está bien financiada y generalmente apunta a organizaciones o naciones por razones comerciales o políticas.

Su objetivo principal es implementar malware personalizado en uno o más de los sistemas del objetivo y permanecer allí sin ser detectado.

![](https://skillsforall.com/content/i2cs/7.1/courses/content/m2/es-XL/assets/a1a2dd4e8ba07b8f319eceac76057ee0ab73561f.png)

## Depende de usted ...

¡Uf! Eso es mucho para asimilar y los hackers ciertamente tienen muchas herramientas a su disposición. Es importante que sepa cuáles son estos para que pueda protegerse a sí mismo y a @Apollo.

Recuerde algunas de las actividades sospechosas que ha visto recientemente en la organización. Según lo que ha aprendido en este tema, ¿qué tipo de ataque podría ser cada uno de estos escenarios? Tómese su tiempo con este. Tiene la oportunidad de ganar algunos puntos de defensor que tanto necesita.

Seleccione la respuesta correcta en cada lista desplegable y, a continuación, Enviar.

- De camino a la oficina, una persona a la que nunca ha visto antes le pide que sostenga la puerta; olvidó su tarjeta de acceso. **_R-.Ingeniería social_**
- Ha empezado a recibir un mensaje de error al acceder a su ordenador: «Se ha interrumpido la conexión. Se detectó un cambio en la red. **_R-.DoS_**

- Buscó el sitio web de @Apollo en Google, pero cuando hizo clic en el resultado principal, se le redirigió a una página de publicidad de software antivirus **_R-.Envenenamiento SEO_**

Pudo identificar los ataques potenciales que podrían estar ocurriendo justo delante de sus narices. Recuerde, es importante mantenerse alerta y tener en cuenta todas las formas en que los atacantes intentan atraparlo. Tenga en cuenta que muchos ataques modernos implican una combinación de estos métodos, y los ciberdelincuentes a menudo utilizan múltiples técnicas para infiltrarse y atacar un sistema.

**A continuación...**
Para evitar que los ciberdelincuentes lancen un ciberataque, las organizaciones deben verificar constantemente las vulnerabilidades de seguridad en sus sistemas y redes.
