#! /bin/bash
#Este scrip genera un reporte del estado de salud del servidor

#Variables que capturan los comandos de monitoreo
fecha=$(date)
cpu=$(ps)
memoria=$(free -h | awk '/^Mem:/ {print "Total:",$2,"Used:", $3, "Free:", $4}')
space=$(df)
host=$(hostname)
up=$(uptime)

#Desplegando comandos de monitoreo
echo "==================FECHA DE EJECUCION==============="
echo "Fecha de ejecucion: $fecha"
echo "=================CPU=============================="
echo "CPU: $cpu"
echo "=================MEMORIA=========================="
echo "$memoria"
echo "=================ESPACIO EN DISCO================="
echo "Espacio en disco: $space"
echo "=================HOSTNAME Y UPTIME================"
echo "Hostname: $host"
echo "Uptime: $up"

