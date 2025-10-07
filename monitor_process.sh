#! /bin/bash
#
#Este script monitoreo procesos criticos y si detecta alguno abajo procede a reiniciarlo

#Guarda proceso ingresado por el usuario
proc=$1

#filtrando proceso ingresado por el usuario
pgrep $proc
if [ "$?" -eq "0" ];then
	echo "El proceso $proc esta corriendo correctamente."
else
	echo "[Alerta] el proceso $proc no esta activo. Intentando reiniciarlo.."
#Se procede con el reinicio del servicio
        sudo systemctl start $proc
	pgrep $proc
#Se valida que se ejecuta el reinicio correctamente
	if [ "$?" -eq "0" ];then
	 	echo "Proceso $proc reiniciado correctamente"
                fecha=$(date '+%Y-%m-%d %H:%M:%S')
#Se guarda registro en el archivo .log
		echo "$fecha - $proc no estaba activo. Se reinicio automaticamente" | sudo tee -a /var/log/monitor_process.log
	else
		echo "Es probable que este servicio no este instaldo en tu servidor"
	fi	
fi

#Queda mas codigo por mejorar



