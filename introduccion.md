# COMANDOS BASICOS DE LINUX

## Descripción de cada directorio:
```bash
-> / (Raíz): El directorio raíz que contiene todos los demás directorios y archivos.
-> /bin: Comandos binarios esenciales, como ls, cp, mkdir.
-> /boot: Archivos necesarios para el arranque del sistema, incluido el kernel.
-> /dev: Archivos de dispositivos del sistema.
-> /etc: Archivos de configuración del sistema.
-> /home: Directorios personales de los usuarios.
-> /lib: Bibliotecas esenciales para los binarios en /bin y /sbin.
-> /media: Puntos de montaje para medios extraíbles como CD ->ROMs y USBs.
-> /mnt: Puntos de montaje temporales para el administrador del sistema.
-> /opt: Paquetes de software opcionales.
-> /proc: Sistema de archivos virtual que proporciona información sobre el sistema y procesos en ejecución.
-> /root: Directorio personal del usuario root (superusuario).
-> /run: Archivos de estado temporal, creados al inicio del sistema.
-> /sbin: Comandos binarios esenciales para la administración del sistema.
-> /srv: Datos específicos del sitio servidos por el sistema.
-> /sys: Información del sistema y dispositivos, similar a /proc.
-> /tmp: Archivos temporales.
-> /usr: Utilidades y aplicaciones del usuario, que incluye subdirectorios como /usr/bin, /usr/lib, etc.
-> /var: Archivos variables como logs, correos, impresoras, etc.
```

## Estructura de comandos

Cuando el sistema presenta el prompt significa que ya está preparado para aceptar los comandos que tecleemos. La forma general de los comandos en Linux es: 

```bash
$ comando [opciones] [parámetros] 
```

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

## Significado de los Puntos y Otros Signos
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