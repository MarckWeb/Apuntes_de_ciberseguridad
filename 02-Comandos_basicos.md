# Comandos Básicos de Linux

vamos a conocer más comandos utilizados para movernos por la estructura de
directorios del sistema: 

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
┌──(usuario㉿kali)-[~]
└─$ echo "Hola Mundo"

-----------------Salida--------------------
Hola Mundo
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

- __mkdir (Make Directory)__ -. Crea un nuevo directorio.

```bash
mkdir nombre_del_directorio
```

Para crear directorios padres si no existen:

```bash
mkdir -p directorio_padre/diretorio_hijo/
```

```bash
# Ejemplo
┌──(marck㉿kali)-[~]
└─$ mkdir apuntes_linux
-----------------Salida--------------------
Si no hay errores, no se mostrará ninguna salida, 
lo que indica que se ha creado el directorio correctamente.


┌──(marck㉿kali)-[~]
└─$ mkdir -p directorio_padre/directorio_hijo/archivo.txt
-----------------Salida--------------------
Si no hay errores, no se mostrará ninguna salida, 
indicando que se han creado el directorio, 
el directorio padre, el hijo y el archivo correctamente.
```

- __rmdir (Remove Directory)__ -. Elimina un directorio vacío.

```bash
rmdir nombre_del_directorio
```

```bash
# Ejemplo
┌──(marck㉿kali)-[~]
└─$ rmdir apuntes_linux
-----------------Salida--------------------
Si no hay errores, no se mostrará ninguna salida, 
indicando que se elimino el directorio. 

```

- __rm (Remove)__ -. Elimina archivos o directorios.

```bash
rm nombre_del_archivo
```
Para eliminar un directorio y su contenido de forma recursiva:

```bash
rm -r nombre_del_directorio
```

```bash
# Ejemplo
┌──(marck㉿kali)-[~]
└─$ rm archivo.py 
-----------------Salida--------------------
Si no hay errores, no se mostrará ninguna salida, 
indicando que se elimino el archivo.   

♦ Eliminar directorio con contenido:                                          
┌──(marck㉿kali)-[~]
└─$ rm -r  directorio_padre 

-----------------Salida--------------------
Si no hay errores, no se mostrará ninguna salida, 
indicando que se elimino el directorio mas sus 
archivos que contenia.   
```

- __touch__ -. Crea un archivo vacío o actualiza la fecha de modificación de un archivo existente..

```bash
touch nombre_del_archivo
```

```bash
# Ejemplo
┌──(marck㉿kali)-[~]
└─$ touch archivo_nuevo.txt

-----------------Salida--------------------
Si no hay errores, no se mostrará ninguna salida, 
indicando que se creo el nuevo archivo. 
```
- __cat__ -. Muestra el contenido de un archivo.

```bash
cat nombre_del_archivo
```

```bash
# ejemplo de salida
┌──(marck㉿kali)-[~]
└─$ cat archivo.txt

-----------------Salida--------------------
Contenido del archivo...
```
 
- __cp (Copy)__ -. Copia archivos o directorios. No necesitas estar en una posición específica dentro del directorio, pero debes especificar las rutas correctas para el archivo o directorio de origen y de destino. 

```bash
cp directorio_origen directorio_destino
```
```bash
# Ejemplo
┌──(usuario㉿kali)-[~]
└─$ cp archivo.py Documentos/

-----------------Salida--------------------
Si no hay errores, no se mostrará ninguna salida, 
indicando que se ha hecho una copia del archivo al 
directorio indicado 
```
Por ejemplo, si estás en /home/usuario/documentos y quieres hacer una copia archivo.txt a archivo_copia.txt en el mismo directorio:

```bash
cp archivo.txt archivo_copia.txt
```

```bash
# Ejemplo
┌──(usuario㉿kali)-[~]
└─$ cp archivo.py archivo_copia.py

-----------------Salida--------------------
Si no hay errores, no se mostrará ninguna salida, 
indicando que se ha hecho una copia del archivo
en el mismo directorio. 
```

Si el archivo de origen está en un directorio diferente, necesitas proporcionar la ruta completa o relativa:
Por ejemplo, si quieres copiar archivo.txt desde /home/usuario/downloads a /home/usuario/documentos:

```bash
cp /home/usuario/downloads/archivo.txt /home/usuario/documentos/archivo.txt 
```

Para copiar un directorio y su contenido: y se siguen los mismo pasos anteriores para copiar a otro directorio

```bash
cp -r directorio_origen directorio_destino
```
```bash
# Ejemplo
┌──(marck㉿kali)-[~]
└─$ cp /home/marck/usernames2.txt /home/marck/Desktop/usernames2.txt

-----------------Salida--------------------
Si no hay errores, no se mostrará ninguna salida, 
indicando que se ha hecho una copia del archivo
en al otro directorio. 
```
- __mv (Move)__ -. Mueve o renombra archivos o directorios.  

```bash
mv archivo_origen archivo_destino
```
Renombra el archivo existente:

```bash
mv directorio_nombre_original directorio_nombre_cambiado
```
```bash
# Ejemplo
┌──(marck㉿kali)-[~]
└─$ mv casa_azul casa_medio_azul

-----------------Salida--------------------
Si no hay errores, no se mostrará ninguna salida, 
indicando que se cambio el nombre del directorio. 
```

Mover el archivo existente:
Por ejemplo, para mover archivo.txt desde /home/marck/documentos a /home/marck/desktop, usarías:

```bash
mv /home/marck/documentos/archivo.txt /home/marck/desktop/archivo.txt
```

Si estás en el mismo directorio donde esta el archivo y quieres mover a otro directorio:

```bash
┌──(marck㉿kali)-[~/Documents]
└─$  mv archivo.txt ../Desktop

-----------------Salida--------------------
Si no hay errores, no se mostrará ninguna salida, 
indicando que se movio el archivo al otro directorio. 
```

Si estás en el directorio padre de ambos directorios de origen y destino:
y quieres mover un archivo

```bash
#Ejemplo
┌──(marck㉿kali)-[~]
└─$ mv Desktop/Cursos/hacking.txt Documents

-----------------Salida--------------------
Si no hay errores, no se mostrará ninguna salida, 
indicando que se movio el archivo al otro directorio. 
```

- __clear (Clear)__ -.  Limpia la terminal.  

```bash
clear
```

```bash
# Ejemplo
┌──(marck㉿kali)-[~]
└─$ clear

-----------------Salida--------------------
Si no hay errores, limpia todo el contenido
de la terminal. 
```

- __clear (Clear)__ -.  Limpia la terminal.  

```bash
clear
```

```bash
# Ejemplo
┌──(marck㉿kali)-[~]
└─$ clear

-----------------Salida--------------------
Si no hay errores, limpia todo el contenido
de la terminal. 
```
