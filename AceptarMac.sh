#Codigo para desbloquera una direccion MAC

# Solicitar al usuario que ingrese la MAC
echo "Ingrese la MAC a desbloquear"
read BLOCK_MAC
# Bloquear el puerto 22 para la IP ingresada
#iptables -A INPUT -m mac --mac-s $BLOCK_MAC -j DROP
iptables -D INPUT -p tcp -m mac --mac-s $BLOCK_MAC --dport 22 -j DROP
echo "La direccion MAC $BLOCK_MAC fue desbloqueada"
