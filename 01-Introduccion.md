# INTRODUCCIÓN A LINUX

## Por qué aprender comandos básicos de Linux

Linux es uno de los sistemas operativos más populares y versátiles en el mundo de la informática. Dominar los comandos básicos de Linux te brinda una serie de beneficios, incluyendo:

- **Flexibilidad**: Conocer los comandos te permite realizar una variedad de tareas, desde la administración del sistema hasta la programación y el desarrollo de software.

- **Eficiencia**: Al utilizar la línea de comandos, puedes realizar muchas tareas de manera más rápida y eficiente que utilizando interfaces gráficas de usuario.

- **Aprendizaje transferible**: Muchos conceptos y comandos básicos de Linux son transferibles a otros sistemas operativos basados en Unix, como macOS.

- **Acceso a herramientas avanzadas**: Muchas herramientas y utilidades poderosas están disponibles solo a través de la línea de comandos en Linux, lo que te brinda acceso a capacidades avanzadas de administración y desarrollo.

## ESTRUCTURA DEL SISTEMA DE ARCHIVOS EN GNU/LINUX

El File System o sistema de archivos sirve para la organización de datos y metadatos, proporcionando los medios para el almacenamiento tales como disco duro, disquete….

- **/** (Raíz): El directorio raíz que contiene todos los demás directorios y archivos.
- **/home** Cada usuario tendrá un subdirectorio para almacenar sus archivos personales
- **/bin**: Comandos binarios esenciales, como `ls`, `cp`, `mkdir`.
- **/boot**: Archivos necesarios para el arranque del sistema, incluido el kernel.
- **/dev**: Archivos de dispositivos del sistema.
- **/etc**: Archivos de configuración del sistema.
- **/home**: Directorios personales de los usuarios.
- **/lib**: Archivos de librerías, similares a archivos .dll
- **/media**: Puntos de montaje para medios extraíbles como CD-ROMs y USBs.
- **/mnt**: Puntos de montaje temporales para el administrador del sistema.
- **/opt**: Paquetes de software opcionales.
- **/proc**: Sistema de archivos virtual que proporciona información sobre el sistema y procesos en ejecución.
- **/root**: Contiene los archivos del usuario «root" (administrador)(superusuario).
- **/run**: Archivos de estado temporal, creados al inicio del sistema.
- **/sbin**: Comandos binarios esenciales para la administración del sistema.
- **/srv**: Datos específicos del sitio servidos por el sistema.
- **/sys**: Información del sistema y dispositivos, similar a `/proc`.
- **/tmp**: Archivos temporales.
- **/usr**: Contiene la mayoría de los archivos de los programas instalados en el ordenador por el usuario.
- **/var/log**: Contiene los archivos de registros (logs) de las aplicaciones.

## Estructura de comandos

Cuando el sistema presenta el prompt significa que ya está preparado para aceptar los comandos que tecleemos. La forma general de los comandos en Linux es: 

```bash
$ comando [opciones] [parámetros] 
```
A la hora de introducir los comandos hay que tener en cuenta:

    * Los comandos hay que teclearlos exactamente.
    * Las letras mayúsculas y minúsculas se consideran como diferentes.
    * Normalmente, el sistema operativo utiliza un signo de $ como prompt para indicar que está preparado para aceptar comandos, aunque este carácter puede ser fácilmente sustituido por otro carácter. En el caso de que el usuario que acceda sea el administrador este signo se sustituye por #.
    * Cuando sea necesario introducir el nombre de un fichero o directorio como argumento a un comando, GNU/Linux permite escribir las primeras letras y si se presiona la tecla del tabulador, realiza un autorrellenado, y en el caso que no pueda distinguir entre diversos casos, rellenará hasta el punto en el que se diferencien.

## Ruta Relativa y Absoluta

**Ruta Relativa:**
Especifica la ubicación de un archivo o directorio en relación al directorio actual.
- Ejemplo: ../documentos

**Ruta Absoluta:**
Especifica la ubicación exacta desde la raíz del sistema de archivos.
- Ejemplo: /home/usuario/documentos

## Signos y puntos

**Signo ~**

El signo ~ representa el directorio personal del usuario actual.

```bash
cd ~      # Va al directorio del usuario
```
- . (punto): Representa el directorio actual.
Ejemplo: ./script.sh ejecuta el script en el directorio actual.

- .. (doble punto): Representa el directorio padre.
Ejemplo: ../imagenes se mueve un nivel arriba y luego a imagenes.

- / (barra): Separador de directorios en rutas.
Ejemplo: /usr/local/bin

```bash
cd .      # Permanece en el directorio actual
cd ..     # Sube al directorio padre
```


