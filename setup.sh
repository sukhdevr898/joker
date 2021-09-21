##############################################
###checking internet



echo -e "                              \e[1;96m[\e[0m\e[92m CHECKING INTERNET CONNECTION....[!]\e[0m\e[1;96m]"
wget -q --spider https://google.com
if [ $? -eq 0  ];
then 
echo -e "                              \e[1;96m[\e[0m\e[92m ON....[✓]\e[0m\e[1;96m]"
sleep 2.0
else
echo -e "                              \e[1;96m[\e[0m\e[92m OFF....[!]\e[0m\e[1;96m]"
exit 1
fi
sleep 2.0
echo -e "                              \e[1;96m[\e[0m\e[92m CHECKING REQUIREMENTS....[!]\e[0m\e[1;96m]"
sleep 2.0
if [ -e /data/data/com.termux/files/usr/bin/python ];
then
echo -e "                             => \e[1;96m[\e[0m\e[92m PYTHON INSTALLED....[✓]\e[0m\e[1;96m]"
else
pkg install python -y
echo -e "                             => \e[1;96m[\e[0m\e[92m PYTHON INSTALLED....[✓]\e[0m\e[1;96m]"
fi
if [ -e /data/data/com.termux/files/usr/bin/wget ];
then
echo -e "                             => \e[1;96m[\e[0m\e[92mWGET  INSTALLED....[✓]\e[0m\e[1;96m]"
else
pkg install wget -y
echo -e "                             => \e[1;96m[\e[0m\e[92m WGET INSTALLED....[✓]\e[0m\e[1;96m]"
fi
if [ -e /data/data/com.termux/files/usr/bin/curl ];
then
echo -e "                             => \e[1;96m[\e[0m\e[92m CURL INSTALLED....[✓]\e[0m\e[1;96m]"
else
pkg install curl -y
echo -e "                             => \e[1;96m[\e[0m\e[92m CURL INSTALLED....[✓]\e[0m\e[1;96m]"
fi
if [ -e /data/data/com.termux/files/usr/bin/ssh ];
then
echo -e "                             => \e[1;96m[\e[0m\e[92m SSH INSTALLED....[✓]\e[0m\e[1;96m]"
else
pkg install openssh -y
echo -e "                             => \e[1;96m[\e[0m\e[92m SSH INSTALLED....[✓]\e[0m\e[1;96m]"
fi
pip install speedtest-cli
echo -e "=> \e[1;96m[\e[0m\e[92m pip INSTALLED....[✓]\e[0m\e[1;96m]"

pkg install python2 
echo -e "                             => \e[1;96m[\e[0m\e[92m PYTHON2 INSTALLED....[✓]\e[0m\e[1;96m]"

uzip zites.zip

############################ngrok 

echo -e "\e[94m|-----------------------------------|"
echo -e "\e[94m|            NGROK DOWNOADING....   |"
echo -e "\e[94m|-----------------------------------|"
curl -o ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm64.zip > /dev/null 2>&1
unzip ngrok.zip
cp ngrok $HOME


echo -e '\e[96m   EXAMPLE AUTH TOKEN IS :  ./ngrok authtoken RWERfrtf356sr '
echo -e '\e[96m                           |'
echo -e '\e[96m                   JUST PASTE THIS PART'
echo -e '\e[96m                                   RWERfrtf356sr'
echo -e '\e[96m                           |'
echo -e '\e[96m                           |'
sleep 8.0
clear
am start -a android.intent.action.VIEW -d https://www.ngrok.com
clear
read -p $'\n\e[1;96m[\e[0m\e[1;92m+\e[0m\e[1;96m] NGROK AUTH TOKEN : \e[0m' au
cd $HOME
./ngrok authtoken $au
echo -e "\e[94m|-----------------------------------|"
echo -e "\e[94m|         JOKER FILE SETUPING....   |"
echo -e "\e[94m|-----------------------------------|"
if [ -e /data/data/com.termux/files/usr/bin/joker ];
then 
echo -e "\e[94m ----------SETUP COMPLETED---------------"
else
mv joker /data/data/com.termux/files/usr/bin
chmod +x /data/data/com.termux/files/usr/bin/joker
echo -e "\e[94m ----------SETUP COMPLETED---------------"
echo -e "\e[94m \n\t-------------------------"
echo -e "\e[94m \n\tNOW JUST TYPE 'joker' IN HOME DIRECTORY \n\t AND RUN TOOL DIRECT"
echo -e "\e[94m \n\t-------------------------"
rm setup.sh
bash joker.sh
fi
