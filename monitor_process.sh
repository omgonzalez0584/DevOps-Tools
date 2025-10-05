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
#Se procede con el reinicio del servicio
        sudo systemctl start $proc
	ps -aux | grep "^root" | grep "$proc"
#Se valida que se ejecuta el reinicio correctamente
	if [ "$?" -eq "0" ];then
	 	echo "Proceso $proc reiniciado correctamente"
                fecha=$(date +"%Y%m%d%H%M%S")
		echo "$fecha - $proc no estaba activo. Se reinicio automaticamente" >> monitor_process.log 
		sudo mv monitor_process.log /var/log
	else
		echo "Es probable que este servicio no este instaldo en tu servidor"
	fi	
fi





