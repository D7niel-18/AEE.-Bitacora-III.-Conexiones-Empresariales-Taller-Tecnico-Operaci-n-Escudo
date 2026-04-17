# AEE.-Bitacora-III.-Conexiones-Empresariales-Taller-Tecnico-Operaci-n-Escudo
- Autor: Daniel Jiménez Ramírez
- Profesor: Willman Acosta
- Asignatura: Sistemas informaticos

## Fundamentos de Seguridad y Auditoría
### 1. Fase investigación
Syslog es el protocolo estándar de mensajería de eventos en sistemas Unix/Linux, definido inicialmente de forma informal en la RFC 3164 (2001) y posteriormente formalizado con mayor rigor en la RFC 5424. Cualquier proceso del sistema (el kernel, el demonio SSH, el planificador cron o el subsistema de autenticación) puede emitir mensajes a través de este protocolo, que los entrega al demonio rsyslogd o syslog-ng para su almacenamiento y/o reenvío.
Cada mensaje Syslog se clasifica cruzando dos variables independientes:
- Facility (Instalación) identifica qué parte del sistema ha generado el evento. Algunos ejemplos son: kern, user, daemon, auth, cron.
- Severity (Severidad) indica cuanto de grave es el evento. Se definen exactamente 8 niveles.

**¿Por qué es una negligencia grave que el archivo /var/log/auth.log tenga permisos de lectura para usuarios no privilegiados?**
Ese archivo es un mapa del sistema para cualquier atacante con acceso local. Concretamente, expone enumeración de usuarios válidos. El log registra cada intento de login con el nombre de usuario exacto. Cualquier atacante podria obtener en segundos una lista de qué cuentas existen y cuáles tienen actividad reciente, sin necesidad de ningún privilegio adicional.

**¿Qué información específica (como PIDs, nombres de usuario o direcciones IP) diferencia un intento fallido de conexión remota SSH de un simple fallo de contraseña de un usuario local frente a la pantalla?**
Se vera la IP remota, puerto asociado y el protocolo.

### 2. Log Management
Si dejas los logs en el servidor y un atacante logra entrar en tu servidor, un atacante podria borrar su propio registro de acceso y que nadie sepa que esta dentro.

La solución que podemos usar es Log Management que se encarga enviar todos los registros en tiempo real a un servidor externo. Entoces si se llegara a vulnerar el servidor principal tu vas a tener todos los registros de acceso y el atacante no podra ser anonimo. Además por ley si hay una fuga de datos hay que tener todos los registros guardados y bien protegidos.
- Sistema usado: Linux Server.
