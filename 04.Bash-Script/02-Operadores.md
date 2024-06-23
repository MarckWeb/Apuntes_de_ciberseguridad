Operadores Numéricos

```bash
-eq: Igual que (equal).
Ejemplo: if [ "$a" -eq "$b" ]

-ne: No igual que (not equal).
Ejemplo: if [ "$a" -ne "$b" ]
-gt: Mayor que (greater than).

Ejemplo: if [ "$a" -gt "$b" ]
-lt: Menor que (less than).

Ejemplo: if [ "$a" -lt "$b" ]
-ge: Mayor o igual que (greater than or equal to).

Ejemplo: if [ "$a" -ge "$b" ]
-le: Menor o igual que (less than or equal to).

Ejemplo: if [ "$a" -le "$b" ]
```

Operadores de Cadenas de Texto

```bash
=: Igual que (para cadenas de texto).

Ejemplo: if [ "$str1" = "$str2" ]
!=: No igual que (para cadenas de texto).

Ejemplo: if [ "$str1" != "$str2" ]
-z: Cadena vacía.

Ejemplo: if [ -z "$str" ]
-n: Cadena no vacía.

Ejemplo: if [ -n "$str" ]
Operadores de Archivos
-e: Existe (archivo o directorio).

Ejemplo: if [ -e "$file" ]
-f: Es un archivo regular.

Ejemplo: if [ -f "$file" ]
-d: Es un directorio.

Ejemplo: if [ -d "$dir" ]
-r: Tiene permisos de lectura.

Ejemplo: if [ -r "$file" ]
-w: Tiene permisos de escritura.

Ejemplo: if [ -w "$file" ]
-x: Tiene permisos de ejecución.

Ejemplo: if [ -x "$file" ]
```

Operadores Lógicos
!: Negación (NOT).

Ejemplo: if [ ! "$condición" ]
-a: Y lógico (AND).

Ejemplo: if [ "$condición1" -a "$condición2" ]
-o: O lógico (OR).

Ejemplo: if [ "$condición1" -o "$condición2" ]
