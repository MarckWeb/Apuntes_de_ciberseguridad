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

- __cd (Change Directory)__ -. Cambia el directorio de trabajo actual.

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

- __cd (Make Directory)__ -. Crea un nuevo directorio.

```bash
mkdir nombre_del_directorio
```
Para crear directorios padres si no existen:
```bash
mkdir -p directorio_padre/diretorio_hijo/
```

```bash
# ejemplo de salida
┌──(marck㉿kali)-[~]
└─$ mkdir apuntes_linux

┌──(marck㉿kali)-[~]
└─$ mkdir -p directorio_padre/directorio_hijo/archivo.txt

┌──(marck㉿kali)-[~]
└─$ cd directorio_padre 
                                                   
┌──(marck㉿kali)-[~/directorio_padre]
└─$ ls
directorio_hijo
```

- __rmdir (Remove Directory)__ -. Elimina un directorio vacío.

```bash
rmdir nombre_del_directorio
```

```bash
# ejemplo de salida
┌──(marck㉿kali)-[~]
└─$ rmdir apuntes_linux 
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
┌──(marck㉿kali)-[~]
└─$ rmdir directorio_padre                               
rmdir: failed to remove 'directorio_padre': # por que tiene directorio y archivo dentro
                                              
┌──(marck㉿kali)-[~]
└─$ rm -r  directorio_padre 
# se le indica que elimine el directorio y su contenido                                                                                               
┌──(marck㉿kali)-[~]
└─$ cd directorio_padre
cd: no such file or directory: directorio_padre
# si buscamos el directorio eliminado nos inidcara que no existe por que ya se elimino.
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
 
- __cp (Copy)__ -. Copia archivos o directorios.

```bash
cp archivo_origen archivo_destino
```
Para copiar un directorio y su contenido:

```bash
cp -r directorio_origen directorio_destino
```

- __mv (Move)__ -. Mueve o renombra archivos o directorios.

```bash
# ejemplo de salida
mv archivo_origen archivo_destino
```

