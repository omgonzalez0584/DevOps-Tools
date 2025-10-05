#! /bin/bash
#
#Script monitoreo estado de los procesos criticos

proc=$1

#filtrando proceso ingresado por el usuario
ps -aux | grep "^root" | grep "$1"
echo "proceso ingresado: $proc"



