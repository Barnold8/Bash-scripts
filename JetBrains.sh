echo 

cd ../JetBrains

echo Pick one of the following numbers to launch a JetBrains Program
echo 

echo 0. DataGrip  - Database
echo 1. GoLand - GoLang 
echo 2. Idea-IU Java,Scala,Groovy
echo 3. JetBrains Rider .NET debugger
echo 4. PHPStorm PHP
echo 5. PyCharm Python
echo 6. RubyMine Ruby
echo 7. Webstorm JS
echo


read choice


case $choice in 

    0)
        
        cd Data*/bin
        ./datagrip.sh
        ;;

    1)  
    
        cd Go*/bin
        ./goland.sh

        ;;

    2)  
    
        cd idea*/bin
        ./idea.sh

        ;;


    3)  
    
        cd Jet*/bin
        ./rider.sh
        ;;


    4)  
    
        cd Php*/bin 
        ./phpstorm.sh
        ;;


    5)  
    
        cd pycharm*/bin
        ./pycharm.sh
        ;;


    6)  
    
        cd Ruby*/bin
        ./rubymine.sh
        ;;


    7)  
    
        cd Web*/bin
        ./webstorm.sh
        ;;

    *)
        echo
        echo Invalid input, restart program? y/n 
        read restart
        ;;
esac


case $restart in


    y | Y)
        cd ../Start*
        ./JetBrains.sh
        ;;
    *)

        echo exiting... 
        ;;

esac