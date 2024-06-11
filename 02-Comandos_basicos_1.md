# Comandos Básicos de Linux

comandos utilizados para movernos por la estructura de directorios del sistema: 

al empezar en linux siempre se debe actualizar

```bash
sudo apt update && sudo apt upgrade
```

- __sudo su__ -. Cambia el usuario actual a supero usuario root.

```bash
┌──(marck㉿kali)-[~]
└─$ sudo su                              
[sudo] password for marck: 

-----------------Salida--------------------
┌──(root㉿kali)-[/home/marck]
└─# 
```

- __su (Switch User)__ -. Cambia a usuario normal.

```bash
┌──(root㉿kali)-[/home/marck]
└─# su marck

-----------------Salida--------------------
┌──(marck㉿kali)-[~]
└─$ 
```

- __sudo (Super User Do)__ -. Ejecuta un comando como superusuario.

```bash
# Ejemplo
┌──(root㉿kali)-[/home/marck]
└─# sudo apt update

-----------------Salida--------------------
Actualizara todos los diferentes paquetes
que tiene linux.
```

- __man (Manual)__ -. Muestra el manual de un comando.
```bash
 man nombre_del_comando
```

```bash
# Ejemplo 
┌──(marck㉿kali)-[~]
└─$ man ls
-----------------Salida--------------------
la salida debe mostrar el name, la synopsis, 
y la descripcion del comando
```

- __echo (Echo)__ -. Imprime texto en la terminal.
```bash
 echo "texto"
```

```bash
# Ejemplo
┌──(marck㉿kali)-[~]
└─$ echo "Hola Mundo"

-----------------Salida--------------------
Hola Mundo
```

- __cal (Calendario)__ -. Muestra el calendario del mes o año actual.
```bash
 cal
```

```bash
 cal 5 2024
```

```bash
# Ejemplo
┌──(marck㉿kali)-[~]
└─$ cal

-----------------Salida--------------------
     June 2024        
Su Mo Tu We Th Fr Sa  
                   1  
 2  3  4  5  6  7  8  
 9 10 11 12 13 14 15  
16 17 18 19 20 21 22  
23 24 25 26 27 28 29  
30  

# Ejemplo
┌──(marck㉿kali)-[~]
└─$ cal 5 2024

-----------------Salida--------------------
      May 2024        
Su Mo Tu We Th Fr Sa  
          1  2  3  4  
 5  6  7  8  9 10 11  
12 13 14 15 16 17 18  
19 20 21 22 23 24 25  
26 27 28 29 30 31   
```

- __pwd (Print Working Directoty)__ -. Muestra la ruta del directorio de trabajo actual.
```bash
 pwd
```

```bash
# Ejemplo
┌──(marck㉿kali)-[~/Documentos]
└─$ pwd
-----------------Salida--------------------
/home/marck/Documentos
```

- __ls (List)__ -. Lista los archivos y directorios en el directorio actual.

```bash
ls
```
_Opciones útiles:_

- ls -l: Lista en formato detallado.
- ls -a: Lista todos los archivos, incluidos los ocultos.
- ls –R Lista de archivos y directorios y de todos los directorios dentro de él.
- ls –C Lista de archivos en columnas.
- ls –lt Lista extendida de archivos ordenada por fecha. 

```bash
# Ejemplo
┌──(marck㉿kali)-[~]
└─$ ls
-----------------Salida--------------------
Documentos  Escritorio  Imágenes  Música
```

- __cd (Change Directory)__ -. Cambia el directorio de trabajo actual.

```bash
cd nombre_del_directorio
```
Para ir al directorio anterior:

```bash
cd ..
```

```bash
# Ejemplo
┌──(marck㉿kali)-[~]
└─$ cd Downloads
-----------------Salida--------------------
El encabezado cambia y muestra el nuevo directorio:
┌──(marck㉿kali)-[~/Downloads]
└─$ 

Ahora si haces:
┌──(marck㉿kali)-[~/Downloads]
└─$ cd ..
-----------------Salida--------------------
El encabezado cambia a ~:
┌──(marck㉿kali)-[~]
└─$ 
```

