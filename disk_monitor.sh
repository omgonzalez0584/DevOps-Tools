#! /bin/bash
#This script monitoring the health disk

umbral=${1:-80}
listp=()
listf=()

#Extract filesystem and usage in df command
for filesystem in $(df -h | awk '{print $1}')
   do 
     listf+=($filesystem)
done
unset listf[0]

for porcentaje in $(df -h | awk '{print $5}' | sed 's/.$//')
 do
   listp+=($porcentaje)
done
unset listp[0]

 
#Doing check usage vs umbral 
length=${#listp[*]}
count=0
for i in "${!listp[@]}";
   do
     if [[ ${listp[i]} -gt $umbral ]]; then
	echo " ALERTA: ${listf[i]} esta al ${listp[i]}% (umbral: $umbral)"
	count=$((count + 1))
      fi
done
if [[ $count -eq 0 ]]; then
	echo "Cero discos alarmados"
fi



