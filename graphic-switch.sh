#!/bin/sh

switchingtonvidia(){
    sudo rm /usr/share/X11/xorg.conf.d/20-intel.conf
    sudo prime-select nvidia
    echo "to restart your computer"
    sudo shutdown -r now
    sleep 1
}
switchingtointel(){
    sudo cp /home/youruser/20-intel.conf /usr/share/X11/xorg.conf.d/
    sudo prime-select intel
    echo "to restart your computer"
    sudo shutdown -r now
    sleep 1
}

opsi=1
while [ $opsi ]
do
clear
echo ''
echo '*******************************************************************'
echo '*                     Graphic-Switch Script                       *'
echo '*             Halim Mubdi     halim.dash25@gmail.com              *'
echo '*******************************************************************'
echo ''
echo "1.Switching to Nvidia"
echo "2.Switching to Intel"
echo " "
echo -n "pilih opsi : "
read opsi
case $opsi in

    1)switchingtonvidia
    ;;

    2)switchingtointel
    ;;

    *) echo *Thanks for using this program*
    sleep 1

esac
done