# Comandos Básicos de Linux

vamos a conocer más comandos utilizados para movernos por la estructura de
directorios del sistema: 

- **man (Manual)** -. Muestra el manual de un comando.
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

- **pwd (Print Working Directoty)** -. Muestra la ruta del directorio de trabajo actual.
```bash
 pwd
```

```bash
# Ejemplo
┌──(usuario㉿kali)-[~/Documentos]
└─$ pwd
-----------------Salida--------------------
/home/usuario/Documentos
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
┌──(usuario㉿kali)-[~]
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
┌──(usuario㉿kali)-[~]
└─$ cd Downloads
-----------------Salida--------------------
El encabezado cambia y muestra el nuevo directorio:
┌──(usuario㉿kali)-[~/Downloads]
└─$ 

Ahora si haces:
┌──(usuario㉿kali)-[~]
└─$ cd ..
-----------------Salida--------------------
El encabezado cambia a ~:
┌──(usuario㉿kali)-[~]
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
┌──(usuario㉿kali)-[~]
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
┌──(usuario㉿kali)-[~]
└─$ rmdir apuntes_linux
-----------------Salida--------------------
Si no hay errores, no se mostrará ninguna salida, 
indicando que se elimino el directorio, 

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
# ejemplo de salida
# eliminar directorio sin contenido
┌──(marck㉿kali)-[~]
└─$ rmdir directorio_padre   

# eliminar directorio con contenido                                         
┌──(marck㉿kali)-[~]
└─$ rm -r  directorio_padre 
```

- __touch__ -. Crea un archivo vacío o actualiza la fecha de modificación de un archivo existente..

```bash
touch nombre_del_archivo
```

```bash
# ejemplo de salida
┌──(marck㉿kali)-[~]
└─$ touch archivo_nuevo.txt
```
- __cat__ -. Muestra el contenido de un archivo.

```bash
cat nombre_del_archivo
```

```bash
# ejemplo de salida
┌──(marck㉿kali)-[~]
└─$ cat usernames.txt     
admin
user
msfadmin
pepe
jaimito
root
```
 
- __cp (Copy)__ -. Copia archivos o directorios. No necesitas estar en una posición específica dentro del directorio, pero debes especificar las rutas correctas para el archivo o directorio de origen y de destino. 

```bash
cp archivo_origen archivo_destino
```
Por ejemplo, si estás en /home/usuario/documentos y quieres copiar archivo.txt a archivo_copia.txt en el mismo directorio:

```bash
cp archivo.txt archivo_copia.txt
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
# ejemplo de salida
┌──(marck㉿kali)-[~/Desktop]
└─$ cp /home/marck/usernames2.txt /home/marck/Desktop/usernames2.txt

```
- __mv (Move)__ -. Mueve o renombra archivos o directorios. Si especificas las rutas completas, no importa en qué directorio estés situado. 

```bash
mv archivo_origen archivo_destino
```
Renombra el archivo existente:

```bash
mv /home/marck/desktop /home/marck/desktop_file
```

Mover el archivo existente:
Por ejemplo, para mover archivo.txt desde /home/marck/documentos a /home/marck/desktop, usarías:

```bash
mv /home/marck/documentos/archivo.txt /home/marck/desktop/archivo.txt
```

Si estás en el mismo directorio que el archivo que deseas mover:

```bash
cd /home/marck/documentos
mv archivo.txt ../desktop/archivo.txt
```

Si estás en el directorio padre de ambos el directorio de origen y el de destino:

```bash
cd /home/marck
mv documentos/archivo.txt desktop/archivo.txt
```

