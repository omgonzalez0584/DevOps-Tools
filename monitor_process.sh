#! /bin/bash
#
#Script monitoreo estado de los procesos criticos

proc=$1

#filtrando proceso ingresado por el usuario
ps -aux | grep "^root" | grep "$1"
if [ "$?" -eq "0" ];then
	echo "El proceso $proc se esta ejecutando"
else
	echo "El proceso $proc no se esta ejecutando"
fi




