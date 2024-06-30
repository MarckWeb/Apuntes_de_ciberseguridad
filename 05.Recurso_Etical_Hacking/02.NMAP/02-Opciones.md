## Opciones de Puertos:
1. Escanear un rango de puertos:

```sh
# Escanea los puertos del 20 al 80 en el objetivo.
nmap -p 20-80 <objetivo>
```

2. Escanear una lista de puertos:

```sh
# Escanea los puertos 22, 80 y 443 en el objetivo
nmap -p 22,80,443 <objetivo>
```

3. Mezclar escaneo TCP y UDP:

```sh
# Escanea el puerto UDP 53, UDP 110 y el rango TCP del 20 al 445.
nmap -pU:53,U:110,T:20-445 <objetivo>
```

4. Escanear de forma lineal:

```sh
# No aleatoriza los puertos, los escanea en orden secuencial.
nmap -r <objetivo>
```

5. Escanear los puertos más populares:

```sh
# Escanea los 10 puertos más populares.
nmap --top-ports 10 <objetivo>
```

6. Escaneo completo de todos los puertos:

```sh
# Escanea todos los puertos (del 1 al 65535)
nmap -p- <objetivo>
```

7. Escaneo rápido:

```sh
# Escanea rápidamente los puertos más comunes.
nmap -F <objetivo>
```

## Opciones de Sonda

1. No sondar:

```sh
# Asume que todos los hosts están activos sin realizar sondas.
nmap -Pn <objetivo>
```

2. Sonda predeterminada:

```sh
# Usa la sonda predeterminada (TCP 80, 445 e ICMP).
nmap -PB <objetivo>
```

3. Probar puertos TCP específicos:

```sh
# Comprueba si los sistemas están en línea sondeando los puertos TCP 22, 80 y 443.
nmap -PS22,80,443 <objetivo>
```

4. Usar ICMP Echo Request:

```sh
# Usa solicitudes de eco ICMP para descubrir hosts.
nmap -PE <objetivo>
```

5. Usar ICMP Timestamp Request:

```sh
# Usa solicitudes de marca de tiempo ICMP para descubrir hosts.
nmap -PP <objetivo>
```

6. Usar ICMP Netmask Request:

```sh
# Usa solicitudes de máscara de red ICMP para descubrir hosts.
nmap -PM <objetivo>
```

## Opciones de Tiempo:

1. Modo Paranoid (muy lento):

```sh
# Escaneo muy lento, usado para evasión de IDS.
nmap -T0 <objetivo>
```

2. Modo Sneaky:

```sh
# Escaneo bastante lento, usado para evasión de IDS.
nmap -T1 <objetivo>
```

3. Modo Polite:

```sh
# Disminuye la velocidad para consumir menos ancho de banda.
nmap -T2 <objetivo>
```

4. Modo Normal:

```sh
# Modo de tiempo predeterminado basado en la respuesta del objetivo.
nmap -T3 <objetivo>
```

5. Modo Aggressive:

```sh
# Asume una red rápida y confiable, puede abrumar a los objetivos.
nmap -T4 <objetivo>
```

4. Modo Insane:

```sh
# Muy agresivo, probablemente abrumará a los objetivos o omitirá puertos abiertos.
nmap -T5 <objetivo>
```