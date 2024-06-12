#Codigo para denegar los paqutes icmp mediante una IP

# Solicitar al usuario que ingrese la IP
echo "Ingrese la IP a bloquear por protocolo icmp"
read BLOCK_IP

# Bloquear el puerto 22 para la IP ingresada
#iptables -D INPUT -p icmp -s $BLOCK_IP -j DROP
iptables -A INPUT -p icmp -s $BLOCK_IP -j DROP
echo "La direccion IP $BLOCK_IP fue desbloqueada para enviar paquetes icmp."
