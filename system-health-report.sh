#! /bin/bash
#Este scrip genera un reporte del estado de salud del servidor

#Variables que capturan los comandos de monitoreo
fecha=$(date)
cpu=$(ps)
memoria=$(free)
space=$(df)
host=$(hostname)
up=$(uptime)

#Desplegando comandos de monitoreo
echo "==================FECHA DE EJECUCION==============="
echo "Fecha de ejecucion: $fecha"
echo "=================CPU=============================="
echo "CPU: $cpu"
echo "=================MEMORIA=========================="
echo "Memoria del servidor: $memoria"
echo "=================ESPACIO EN DISCO================="
echo "Espacio en disco: $space"
echo "=================HOSTNAME Y UPTIME================"
echo "Hostname: $host"
echo "Uptime: $up"

