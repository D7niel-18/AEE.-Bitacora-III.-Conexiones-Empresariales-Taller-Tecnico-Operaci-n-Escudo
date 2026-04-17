#!/bin/bash

LOG_FILE = "/var/log/auth.log" # VARIABLE PARA LA RUTA DEL ARCHIVO AUTH.LOG
OUTPUT_FILE ="$HOME/alertas.txt" # VARIABLE PARA DECLARAR A DONDE IRAN LOS DATOS EXTRAIDOS.

echo "Informe de seguridad" > $OUTPUT_FILE # IMPRIMIMOS informe de seguridad y lo metemos en el .txt declarado en OUTPUT
echo "Detectando intentos fallidos de acceso" >> $OUTPUT_FILE

# Con esto filtramos los fallos de contraseñas, extraemos la columna NF-3 y con sort lo ordenamos de mayor a menor
sudo grep "Failed password" $LOG_FILE | awk '{print $(NF-3)}' | sort | uniq -c | sort -nr >> $OUTPUT_FILE

echo "El informe se ha generado con exito en $OUTPUT_FILE" # PRINT para informar que el informe ha sido generado.