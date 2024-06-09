#Codigo para dengar el puerto 22 mediante una IP

# Solicitar al usuario que ingrese la IP
echo "Ingrese la IP a aceptar por puerto 22"
read BLOCK_IP

# Bloquear el puerto 22 para la IP ingresada
iptables -D INPUT -p tcp -s $BLOCK_IP --dport 22 -j DROP

echo "La direccion IP $BLOCK_IP fue desbloqueada en el puerto 22."

