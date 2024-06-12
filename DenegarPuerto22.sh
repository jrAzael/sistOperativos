#Codigo para dengar el puerto 22 mediante una IP

# Solicitar al usuario que ingrese la IP
echo "Ingrese la IP a bloquear por puerto 22"
read BLOCK_IP

# Bloquear el puerto 22 para la IP ingresada
iptables -A INPUT -p tcp -s $BLOCK_IP --dport 22 -j DROP

echo "Bloqueo completado para la IP $BLOCK_IP en el puerto 22."

