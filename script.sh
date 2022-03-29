#!/bin/bash
# Ejemplo de Script escrito para LinuxParty para el artículo: 
# "Shell Scripting para automatizar las tareas de mantenimiento del sistema Linux"
# Esta secuencia de comandos devolverá el siguiente conjunto de información del sistema:


echo "0) FECHA"
date
echo "****************************************************************************"
echo""
echo "1) NOMBRE DEL HOST"
hostname
echo""
echo "****************************************************************************"
echo "2) VERSION KERNELL"
uname -a
echo""
echo "****************************************************************************"
echo "3) DISTRIBUCION SISTEMA OPERATIVO"
cat /etc/*release*
echo""
echo "****************************************************************************"
echo "4) INTERFACES DE RED"
ifconfig
echo""
echo "****************************************************************************" 
echo "6) MEMORIA" 
free -m 
echo "----------------------------------------------------------------------------"
cat /proc/meminfo 
echo "----------------------------------------------------------------------------"
grep 'MemTotal' /proc/meminfo
echo "----------------------------------------------------------------------------"
grep 'SwapTotal' /proc/meminfo
echo""
echo "****************************************************************************" 
echo "7) DISCO" 
df -h 
echo "----------------------------------------------------------------------------" 
du -hs * | sort -nr | head -10
echo "****************************************************************************" 
echo""
echo "8) CONEXIONES DE RED" 
netstat -nlp
echo "****************************************************************************" 
echo""
echo "9) PROCESOS ACTIVOS"
ps aux
echo "****************************************************************************"
echo""
echo "10) REPOSITORIOS CONFIGURADOS"
dpkg --get-selections
echo "****************************************************************************"
echo""
echo "11) TIEMPO DE ACTIVIDAD DE SERVIDOR"
uptime
echo "****************************************************************************"
echo""
echo "12) DNS CONFIGURADOS"
cat /etc/resolv.conf
echo "****************************************************************************" 
echo""
echo "13) TABLA DE ENRUTAMIENTO"
route -n
echo""
echo "****************************************************************************"
echo "14) INFORMACION DE PROCESADOR"
grep 'vendor_id' /proc/cpuinfo
echo "----------------------------------------------------------------------------"
grep 'model name' /proc/cpuinfo
echo "----------------------------------------------------------------------------" 
grep 'cpu MHz' /proc/cpuinfo
echo "****************************************************************************"
echo""
echo "15) USUARIOS CONECTADOS"
who
echo ""
