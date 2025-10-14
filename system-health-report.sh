#! /bin/bash
#Este scrip genera un reporte del estado de salud del servidor

fecha=$(date)
memoria=$(free)
space=$(df)
host=$($hostmane)
up=$(uptime)

#Desplegando comandos de monitoreo
echo "Fecha de ejecucion: $fecha"
echo "Memoria del servidor: $memoria"
echo "Espacio en disco: $space"
echo "Hostname: $host"
echo "Uptime: $uptime"
