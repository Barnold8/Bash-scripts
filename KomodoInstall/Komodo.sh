# Guide https://www.notion.so/How-you-can-install-Komodo-On-Ubuntu-ad42cd90a31042efb24e9659631e7c67

#Pre cleanup - If this has already been ran before

    sudo rm -rf downloads
    sudo rm gstrfuncs.c
    sudo rm libtool
    cp -i backups/gstrfuncs.c ./
    cp -i backups/libtool ./
    cp -i backups/libtool2.c ./


#Ask for sudo perm to do all required functionality stuff

echo "Please enter your password, it is required to do all of the processes like grabbing libraries among other things. You can quit now if you don't want to proceed"
sudo echo " "

#installs
    sudo apt-get install libx11-Cev libxi-Cev libxext-Cev libxt-Cev libxrandr-Cev
    sudo apt-get install unzip
    
#dir making

    mkdir downloads
    cd downloads 
    mkdir extract_here
    

#required files:
    wget https://download.gnome.org/sources/glib/1.2/glib-1.2.10.tar.gz
    wget http://old-releases.ubuntu.com/ubuntu/pool/universe/g/glib1.2/
    wget https://download.gnome.org/sources/gtk+/1.2/gtk+-1.2.10.tar.gz
    wget http://old-releases.ubuntu.com/ubuntu/pool/universe/g/gtk+1.2/
    wget https://studentnet.cs.manchester.ac.uk/resources/software/komodo/kmd.tar.gz
    wget https://cdn.discordapp.com/attachments/715919099850522627/777326207150194708/KMD-1.5.0_Theme_Patch.zip
    wget https://studentnet.cs.manchester.ac.uk/resources/software/komodo/assembler/aasm.tar.gz
    

# extract files

     tar -zxvf aasm.tar.gz -C extract_here
     tar -zxvf glib-1.2.10.tar.gz -C extract_here
     tar -zxvf gtk+-1.2.10.tar.gz -C extract_here 
     tar -zxvf kmd.tar.gz -C extract_here
     unzip KMD-1.5.0_Theme_Patch.zip -d extract_here


# terminal stuffs


    cd extract_here/glib-1.2.10/
    linux32 ./configure3
    mv ../../../gstrfuncs.c ./
    mv ../../../libtool ./ 
    sudo make
    sudo make install
    cd ..

# OS THING:

    echo 
    echo 
    echo

    echo "Please enter a number for the following os type you're running"
    echo "1. 64 bit"
    echo "2. 32 bit"
    echo "3. Not sure"

   


    wget http://old-releases.ubuntu.com/ubuntu/pool/universe/g/glib1.2/libglib1.2ldbl_1.2.10-19build1_amd64.deb
    wget http://old-releases.ubuntu.com/ubuntu/pool/universe/g/glib1.2/libglib1.2-dev_1.2.10-19build1_amd64.deb



    wget http://old-releases.ubuntu.com/ubuntu/pool/universe/g/glib1.2/libglib1.2ldbl_1.2.10-19build1_i386.deb
    wget http://old-releases.ubuntu.com/ubuntu/pool/universe/g/glib1.2/libglib1.2-dev_1.2.10-19build1_i386.deb

    


    wget http://old-releases.ubuntu.com/ubuntu/pool/universe/g/glib1.2/libglib1.2ldbl_1.2.10-19build1_amd64.deb
    wget http://old-releases.ubuntu.com/ubuntu/pool/universe/g/glib1.2/libglib1.2-dev_1.2.10-19build1_amd64.deb
    wget http://old-releases.ubuntu.com/ubuntu/pool/universe/g/glib1.2/libglib1.2ldbl_1.2.10-19build1_i386.deb
    wget http://old-releases.ubuntu.com/ubuntu/pool/universe/g/glib1.2/libglib1.2-dev_1.2.10-19build1_i386.deb

# libglib1.2 install

sudo dpkg -i libglib1.2*

#Build and install GTK+

cd gtk+-1.2.10/
linux32 ./configure 
mv ../../../backups/libtool2 ../libtool 
mv ../../../libtool ./


echo ""
echo ""
pwd 
echo ""
echo ""
echo "DEBUG TIME"

read nothing

sudo make
sudo make install

# If you run make again, everything should compile without any errors. Do be warned, GTK+ takes a while to compile compared to GLib, so be patient. If all checks out, then a final run of make install with superuser privileges should conclude this section.