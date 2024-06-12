while true
do
echo "Menu Principal"
echo "1.-Denegar Ping Remoto (Por IP)"
echo "2.-Permitir Ping Remoto(Por IP)"
echo "3.-Denegar Puerto Logico 22 (Por IP)"
echo "4.-Permitir Puerto Logico 22 (Por IP)"
echo "5.-Denegar Puerto Logico 22 (Por Rango de IP'S)"
echo "6.-Permitir Puerto Logico 22 (Por Rango de IP'S"
echo "7.-Denegar Puerto Logico 22 (Por MAC)"
echo "8.-Permitir Puerto Logico 22 (Por MAC)"
echo "9.-Chequeo del estado de las reglas del Kernel"
echo "0.- Salir"
echo "Seleccione una opcion"
read x
case $x in
1)
./DenegarPingRemoto.sh
;;
2)
./AceptarPingRemoto.sh
;;
3)
./DenegarPuerto22.sh
;;
4)
./AceptarPuerto22.sh
;;
5)
./DenegarRangoIPS.sh
;;
6)
./AceptarRangoIPS.sh
;;
7)
./DenegarMac.sh
;;
8)
./AceptarMac.sh
;;
9)
./ChecarReglas.sh
;;
0)
clear
exit
esac
done
