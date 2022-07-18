##############################################
###checking internet

clear

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
pkg install python2  -y
pkg install mpv -y 
pip install speedtest-cli
pkg install openssh -y
pkg install curl -y
pkg install wget -y
pkg install pv -y
pkg install python -y




/


############################ngrok 








mkdir  /data/data/com.termux/files/usr/bin/JOKER





echo -e "\e[94m"
echo -e "\e[94m            NGROK DOWNOADING....   "
echo -e "\e[94m"
curl -o ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm64.zip > /dev/null 2>&1
unzip ngrok.zip
rm ngrok.zip
cp ngrok /data/data/com.termux/files/usr/bin


echo -e '\e[96m   EXAMPLE AUTH TOKEN IS :  ngrok authtoken RWERfrtf356sr '
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

ngrok authtoken $au
echo -e "\e[94m|-----------------------------------|"
echo -e "\e[94m|         JOKER FILE SETUPING....   |"
echo -e "\e[94m|-----------------------------------|"
if [ -e /data/data/com.termux/files/usr/bin/joker ];
then 
rm /data/data/com.termux/files/usr/bin/joker
cd $HOME/joker
mv joker /data/data/com.termux/files/usr/bin
chmod +x /data/data/com.termux/files/usr/bin/joker
echo -e "\e[94m ----------SETUP COMPLETED---------------"
else
cd $HOME/joker
mv joker /data/data/com.termux/files/usr/bin
chmod +x /data/data/com.termux/files/usr/bin/joker
mpv $HOME/joker/setup.wav > /dev/null 2>1&
cd /data/data/com.termux/files/usr/bin/JOKER

wget --show-progress https://github.com/sukhdevr898/joker/raw/Pass/sites.zip
wget --show-progress https://github.com/sukhdevr898/joker/raw/Pass/m.zip
unzip sites.zip
unzip m.zip
rm m.zip
rm sites.zip


echo -e "\e[94m ----------SETUP COMPLETED---------------"

echo -e "\e[94m \n\tNow just type  ' joker ' And Run tool "


rm setup.sh.x


fi
