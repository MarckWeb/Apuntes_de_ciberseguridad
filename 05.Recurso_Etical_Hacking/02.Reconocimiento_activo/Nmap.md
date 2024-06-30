# NMAP listado de comandos

### Sintaxis Básica de Nmap

```sh
nmap [TipoDeEscaneo] [Opciones] {objetivos}
```
Si no se especifica un rango de puertos, Nmap escanea los 1,000 puertos más populares.

## Tipos de escaneo 

1. solo sonda (descubrimiento de host)

No realiza un escaneo de puertos, solo descubre hosts activos.

```sh
┌──(marck㉿kali)-[~]
└─$ nmap -sn 192.168.0.18

Starting Nmap 7.94SVN ( https://nmap.org ) at 2024-06-30 16:53 CEST
Nmap scan report for 192.168.0.18
Host is up (0.00100s latency).
Nmap done: 1 IP address (1 host up) scanned in 13.18 seconds
```
2. Escaneo SYN:

El escaneo SYN se conoce como "half-open scanning" o "escaneo a medio abrir" porque no establece una conexión completa. En su lugar, solo envía un paquete SYN y analiza la respuesta del objetivo.

Este tipo de escaneo es más rápido y menos detectable que un escaneo completo TCP

Proceso:
- SYN: Se envía un paquete SYN al puerto de destino.
- SYN-ACK: Si el puerto está abierto, el objetivo responde con un paquete SYN-ACK.
- RST: En lugar de completar la conexión con un paquete ACK, el escáner envía un paquete RST (reset) para abortar la conexión. Esto es lo que lo hace un escaneo a medio abrir.
- No Respuesta o RST: Si el puerto está cerrado, el objetivo enviará un paquete RST o no responderá en absoluto.

```sh
# Necesario permisos root (sudo)
┌──(marck㉿kali)-[~]
└─$ sudo nmap -sS 192.168.0.18  

Starting Nmap 7.94SVN ( https://nmap.org ) at 2024-06-30 16:55 CEST
Nmap scan report for 192.168.0.18
Host is up (0.00047s latency).
Not shown: 977 closed tcp ports (reset)
PORT     STATE SERVICE
21/tcp   open  ftp
22/tcp   open  ssh
80/tcp   open  http

Nmap done: 1 IP address (1 host up) scanned in 13.75 seconds
```

3. Escaneo de Conexión TCP:

El escaneo -sT realiza conexiones completas TCP a cada puerto. Esto significa que se completa el saludo de tres pasos de TCP (SYN, SYN-ACK, ACK).

- SYN: Se envía un paquete SYN al puerto de destino.
- SYN-ACK: Si el puerto está abierto, el host responde con un paquete SYN-ACK.
- ACK: El escáner envía un paquete ACK de vuelta, completando la conexión.
- Cierre: Luego, la conexión se cierra inmediatamente después.

```sh
┌──(marck㉿kali)-[~]
└─$ nmap -sT 192.168.0.18
Starting Nmap 7.94SVN ( https://nmap.org ) at 2024-06-30 17:00 CEST
Nmap scan report for 192.168.0.18
Host is up (0.0025s latency).
Not shown: 977 closed tcp ports (conn-refused)
PORT     STATE SERVICE
21/tcp   open  ftp
22/tcp   open  ssh
80/tcp   open  http

Nmap done: 1 IP address (1 host up) scanned in 13.36 seconds
```

4. Escaneo UDP

Nmap envía paquetes UDP a los puertos especificados en <IP>.
- Puerto Abierto: Si el puerto está abierto, puede recibir una respuesta del servicio correspondiente en el puerto (por ejemplo, un servidor DNS en el puerto 53).
- Puerto Cerrado: Si el puerto está cerrado, puede recibir un mensaje ICMP "Port Unreachable".
- Filtrado: Si el puerto está filtrado por un firewall u otro dispositivo de red, puede no recibir ninguna respuesta.

```sh
┌──(marck㉿kali)-[~]
└─$ sudo nmap -sU -p 53,111 192.168.0.18 
Starting Nmap 7.94SVN ( https://nmap.org ) at 2024-06-30 17:25 CEST
Nmap scan report for 192.168.0.18
Host is up (0.0020s latency).

PORT    STATE SERVICE
53/udp  open  domain
111/udp open  rpcbind

Nmap done: 1 IP address (1 host up) scanned in 13.55 seconds
```
5. Escaneo de Versión

El escaneo -sV de Nmap se utiliza para detectar las versiones de los servicios que se ejecutan en los puertos abiertos del objetivo.

- Detección de Servicios: Nmap intenta conectarse a los puertos abiertos y enviar solicitudes diseñadas para obtener respuestas características de servicios específicos.
- Análisis de Respuestas: Las respuestas recibidas se comparan con una base de datos de firmas para identificar el software y la versión del servicio.
- Resultado: Nmap muestra los servicios detectados junto con sus versiones.

```sh
┌──(marck㉿kali)-[~]
└─$ sudo nmap -sV 192.168.0.18
Starting Nmap 7.94SVN ( https://nmap.org ) at 2024-06-30 17:32 CEST
Nmap scan report for 192.168.0.18
Host is up (0.00060s latency).
Not shown: 977 closed tcp ports (reset)
PORT     STATE SERVICE     VERSION
21/tcp   open  ftp         vsftpd 2.3.4
22/tcp   open  ssh         OpenSSH 4.7p1 Debian 8ubuntu1 (protocol 2.0)
23/tcp   open  telnet      Linux telnetd
25/tcp   open  smtp        Postfix smtpd

Service Info: Hosts:  metasploitable.localdomain, irc.Metasploitable.LAN; OSs: Unix, Linux; CPE: cpe:/o:linux:linux_kernel

Nmap done: 1 IP address (1 host up) scanned in 66.41 seconds
```

6. Escaneo de TCP FIN ( -sF )

Hay momentos en que un filtro de red o firewall puede detectar un escaneo SYN.

para ello se emplea el escaneo TCP FIN, se envía un paquete FIN a un puerto de destino. Si el puerto está realmente cerrado, el sistema de destino envía de vuelta un paquete RST. Si no se recibe nada del puerto de destino, puede considerar el puerto abierto porque el comportamiento normal sería ignorar el paquete FIN

```sh
┌──(marck㉿kali)-[~]
└─$ sudo nmap -sF 192.168.0.18                          
Starting Nmap 7.94SVN ( https://nmap.org ) at 2024-06-30 18:25 CEST
Nmap scan report for 192.168.0.18
Host is up (0.0014s latency).
Not shown: 977 closed tcp ports (reset)
PORT     STATE         SERVICE
21/tcp   open|filtered ftp
22/tcp   open|filtered ssh
23/tcp   open|filtered telnet

Nmap done: 1 IP address (1 host up) scanned in 14.61 seconds

```

7. Detección de Sistema Operativo
- Envió de Paquetes Especiales: Nmap envía una serie de paquetes TCP/UDP específicos para provocar respuestas que varían según el sistema operativo.
- Análisis de Respuestas: Las respuestas se analizan y comparan con una base de datos de firmas de sistemas operativos para identificar el sistema operativo del objetivo

```sh
┌──(marck㉿kali)-[~]
└─$ sudo nmap -O 192.168.0.18

PORT     STATE SERVICE
21/tcp   open  ftp
22/tcp   open  ssh
23/tcp   open  telnet
25/tcp   open  smtp

Device type: general purpose
Running: Linux 2.6.X
OS CPE: cpe:/o:linux:linux_kernel:2.6
OS details: Linux 2.6.9 - 2.6.33
Network Distance: 1                                                        
```

El análisis de Nmap sugiere que el dispositivo escaneado está ejecutando una versión específica del kernel Linux, pero no proporciona información detallada sobre la distribución específica de Linux (por ejemplo, Ubuntu, CentOS, Debian, etc.). Sin embargo, identifica claramente que el sistema operativo es una variante de Linux con un kernel en la gama de 2.6.X.

8. Establecer Banderas Personalizadas TCP

Establece una lista personalizada de TCP usando URG ACK PSH RST SYN FIN en cualquier orden

Proceso:
- Configuración de Banderas: Se configuran las banderas TCP especificadas en los paquetes enviados.
- Análisis de Respuestas: Se analizan las respuestas del objetivo para determinar el estado de los puertos.

Uso:
- Evasión de Detección: Utilizado para evadir sistemas de detección de intrusos (IDS) y cortafuegos que pueden filtrar o bloquear escaneos convencionales.
- Escaneo Avanzado: Permite realizar escaneos más avanzados y personalizados, dependiendo de las necesidades del análisis de seguridad.

```sh
┌──(marck㉿kali)-[~]
└─$ sudo nmap --scanflags URGACKPSHRSTSYNFIN 192.168.0.18

Starting Nmap 7.94SVN ( https://nmap.org ) at 2024-06-30 18:14 CEST
Nmap scan report for 192.168.0.18
Host is up (0.0013s latency).
All 1000 scanned ports on 192.168.0.18 are in ignored states.
Not shown: 1000 filtered tcp ports (no-response)
MAC Address: 08:00:27:00:F9:19 (Oracle VirtualBox virtual NIC)

Nmap done: 1 IP address (1 host up) scanned in 34.81 seconds

```


Opciones de sonda.
Opciones de puerto.
Opciones de tiempo.
Opciones de scripts.
Opciones de salida.
Opciones adicionales.
Objetivos.