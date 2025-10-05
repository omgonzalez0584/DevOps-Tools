#! /bin/bash
#
#Script monitoreo estado de los procesos criticos

proc=$1

#filtrando proceso ingresado por el usuario
ps -aux | grep "^root" | grep "$proc"
if [ "$?" -eq "0" ];then
	echo "El proceso $proc esta corriendo correctamente."
else
	echo "[Alerta] el proceso $proc no esta activo. Intentando reiniciarlo.."
        sudo systemctl start $proc
	ps -aux | grep "^root" | grep "$proc"
	if [ "$?" -eq "0" ];then
	 	echo "Proceso $proc reiniciado correctamente"
	else
		echo "Es probable que este servicio no este instaldo en tu servidor"
	fi	
fi




