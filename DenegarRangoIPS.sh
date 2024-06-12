#Denegar Rango de Ips
#!/bin/bash
# Función para convertir IP a entero
function ip_to_int() {
    local IFS=.
    read -r i1 i2 i3 i4 <<< "$1"
    echo $((i1 * 256 ** 3 + i2 * 256 ** 2 + i3 * 256 + i4))
}
# Función para convertir entero a IP
function int_to_ip() {
    local ip=$1
    echo "$((ip >> 24 & 255)).$((ip >> 16 & 255)).$((ip >> 8 & 255)).$((ip & 255))"
}
# Solicitar al usuario que ingrese el rango de IPs
read -p "Ingrese la IP de inicio del rango: " START_IP
read -p "Ingrese la IP de fin del rango: " END_IP
# Convertir las IPs a enteros para poder iterar sobre ellas
start_int=$(ip_to_int $START_IP)
end_int=$(ip_to_int $END_IP)
# Verificar que la IP de inicio sea menor o igual a la IP de fin
if (( start_int > end_int )); then
    echo "Error: La IP de inicio debe ser menor o igual a la IP de fin."
    exit 1
fi
# Iterar sobre el rango de IPs y bloquear el puerto 22
for ((i = start_int; i <= end_int; i++)); do
    ip=$(int_to_ip $i)
    iptables -A INPUT -p tcp -s $ip --dport 22 -j DROP
done
echo "Se ha bloqueado las direcciones ip del rango $START_IP - $END_IP en el puerto 22."
