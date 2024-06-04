## Comandos Intermedios

Estos comandos son útiles para la administración del sistema y manipulación de archivos.

- __nano o vi (Text Editors)__ -. Abre un archivo en el editor de texto nano o vi.

```bash
nano nombre_del_archivo_a_editar
```

```bash
vi nombre_del_archivo_a_editar
```

Para salir de VI  solo basta con colocar :q en el modo normal de VI (pulsando ESC se consigue el modo normal), de esta manera podrás salir sin problema. En el modo normal también puedes combinar comandos como por ejemplo :wq, guarda (w) y cierra el programa (q). VI ejecuta los comandos de izquierda a derecha, es importante esto.

- __chmod (Change Mode)__ -. Cambia los permisos de un archivo o directorio. 

```bash
chmod 755 nombre_del_archivo.
```
Otra forma de escribir es asignando + o - para agregar permiso, o para eliminarlo. Después ingresamos uno o más símbolos de permiso (r, w, x).

```bash
chmod u+rw filename # usuario puede leer, escribir
chmod u-r filename # usuario solo puede leer

```

```bash
# ejemplo de salida

```