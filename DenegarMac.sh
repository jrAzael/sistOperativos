#Codigo para DENEGAR una direccion MAC

# Solicitar al usuario que ingrese la MAC
echo "Ingrese la MAC a bloquear por protocolo tcp"
read BLOCK_MAC

# Bloquear la MAC ingresada
iptables -A INPUT -p tcp -m mac --mac-s $BLOCK_MAC --dport 22 -j DROP
#iptables -D INPUT -m mac --mac-s $BLOCK_IP -j DROP
echo "La direccion MAC $BLOCK_MAC fue bloqueada"
