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

- __history (History)__ -.  Muestra el historial de comandos utilizados.  

```bash
history
```

```bash
# Ejemplo
┌──(marck㉿kali)-[~]
└─$ history

-----------------Salida--------------------
 1  ls
 2  cd Documentos
 3  mkdir nuevo_directorio
 4  touch nuevo_archivo.txt
 5  clear
```

- __whoami (Who Am I)__ -.  Muestra el nombre del usuario actual.  

```bash
whoami
```

```bash
# Ejemplo
┌──(marck㉿kali)-[~]
└─$ whoami

-----------------Salida--------------------
marck
```

- __who (Who)__ -. Muestra información sobre los usuarios que están actualmente conectados.  

```bash
who
```

```bash
# Ejemplo
┌──(marck㉿kali)-[~]
└─$ who

-----------------Salida--------------------
marck    tty7         2024-04-05 00:06 (:0)
```

- __passwd (Password)__ -. Cambia la contraseña de un usuario.  

```bash
passwd
```

```bash
# Ejemplo
┌──(marck㉿kali)-[~]
└─$ passwd

-----------------Salida--------------------
Changing password for marck.
Current password: 
```


