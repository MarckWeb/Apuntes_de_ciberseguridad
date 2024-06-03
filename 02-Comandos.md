# Comandos Básicos de Linux

vamos a conocer más comandos utilizados para movernos por la estructura de
directorios del sistema: 

- **pwd (Print Working Directoty)** -. Muestra la ruta del directorio de trabajo actual.
```bash
 pwd
```

```bash
# Ejemplo de Salida
┌──(marck㉿kali)-[~]
└─$ pwd
/home/marck
```

- **ls (List)** -. Lista los archivos y directorios en el directorio actual.

```bash
ls
```
__Opciones útiles:__

- ls -l: Lista en formato detallado.
- ls -a: Lista todos los archivos, incluidos los ocultos.
```bash
# ejemplo de salida
┌──(marck㉿kali)-[~]
└─$ ls -l   
total 5
drwxr-xr-x  6 marck marck  4096 May 29 14:45 Desktop
drwxr-xr-x  2 marck marck  4096 Apr 10 20:38 Music
drwxr-xr-x  2 marck marck  4096 May 31 11:18 Pictures
drwxr-xr-x  2 marck marck  4096 Apr 10 20:38 Public
drwxr-xr-x  2 marck marck  4096 Apr 10 20:38 Videos
```

- **cd (Change Directory)** -. Cambia el directorio de trabajo actual.

```bash
cd nombre_del_directorio
```
Para ir al directorio anterior:

```bash
cd ..
```

```bash
# ejemplo de salida
┌──(marck㉿kali)-[~]
└─$ cd Desktop 
                                               
┌──(marck㉿kali)-[~/Desktop]
└─$ cd ..     
                                              
┌──(marck㉿kali)-[~]
└─$ pwd
/home/marck
```

```bash

```