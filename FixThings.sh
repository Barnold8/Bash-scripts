#sudo fuser -v /var/cache/debconf/config.dat

echo 
echo 

echo Pick a fix

echo 

echo 0. Installer being buggy


read choice

echo 

case $choice in

    0)
        sudo fuser -v /var/cache/debconf/config.dat
        ;;


    *)
        echo Inavalid input, restart program? y/n
        read restart
        ;;
esac


case $restart in


    y | Y)
        cd ../Start*
        ./FixThings.sh
        ;;
    *)

        echo exiting... 
        ;;

esac