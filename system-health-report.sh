#! /bin/bash
#Este scrip genera un reporte del estado de salud del servidor

#Variables que capturan los comandos de monitoreo
fecha=$(date)
memoria=$(free)
space=$(df)
name=$(hostmane)
up=$(uptime)

#Desplegando comandos de monitoreo
echo "Fecha de ejecucion: $fecha"
echo "Memoria del servidor: $memoria"
echo "Espacio en disco: $space"
echo "Hostname: $name"
echo "Uptime: $up"
