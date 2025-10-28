#! /bin/bash
#Este scrip genera un reporte del estado de salud del servidor

#Variables que capturan los comandos de monitoreo
fecha=$(date)
cpu=$(top -b -n 1 | grep "Cpu(s)" | awk '{print $2}' | cut -d'%' -f1)
memoria=$(free -h | awk '/^Mem:/ {print "Total:",$2,"Used:", $3, "Free:", $4}')
space=$(df -h | grep  -v ^tmpfs)
host=$(hostname)
up=$(uptime)
top5=$(ps -aux | head -6 | awk '{print $3, $4, $11}')

#Desplegando comandos de monitoreo
echo "==================================================="
echo "Fecha de ejecucion: $fecha"
echo "==================================================="
echo "Porcentaje de CPU: $cpu%"
echo "==================================================="
echo "Estado de la memoria"
echo "$memoria"
echo "==================================================="
echo "Espacio en disco"
echo "$space"
echo "==================================================="
echo "Top 5 CPU y Memoria"
echo "$top5"
echo "==================================================="
echo "Hostname: $host"
echo "Uptime: $up"

