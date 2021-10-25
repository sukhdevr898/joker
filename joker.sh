clear
##############################



############################
banner(){



echo -e "\e[1;97m $(cat banner.txt)"
echo ""

mpv /sdcard/Music/start.mp3 > /dev/null 2>1&

sleep 4.0
clear
}
wget -q --spider https://raw.githubusercontent.com/sukhdevr898/sukhdevr898/main/.%20joker
if [ $? -eq 0 ];
then 
echo -e "\e[96m\t\t\t |------------------------------------------------------|"
echo -e "\e[96m\t\t\t |    CONNECTED  [✓]                                    |"
echo -e "\e[96m\t\t\t |------------------------------------------------------|"
echo -e "\e[96m\n\t\t\t |========= NOW  YOU ARE CONNECTED WITH SERVER ✓    ===|"
sleep 5.0
else 
echo -e "\e[96m\t\t\t |------------------------------------------------------|"   
echo -e "\e[96m\t\t\t |    NOT CONNECTED [×]                                 |"
echo -e "\e[96m\t\t\t |------------------------------------------------------|"
echo -e "\e[96m\t\t\t |    CHECK INTERNET CONNECTION OTHERWISE               |"
echo -e "\e[96m\t\t\t |  THIS TOOL REMOVED BY SUKHDEVR898 YOU CAN'T USE      |"
echo -e "\e[96m\t\t\t |------------------------------------------------------|"
 sleep 10.0
 exit 1
fi
clear
banner
choose(){

echo -e "                       \e[92m TOOL BY (SUKHDEVR898)\e[0m"
echo
echo -e "\e[96m        |-----------------------[V 1.0]-----------------------|                                    |"
echo -e "\e[96m        |-------------------\e[92mSELECT OPTIONS\e[96m--------------------|                                    |"
echo -e "\e[96m        |-----------------------------------------------------|                                    |"
echo -e "\e[96m        |                                                     |                                    |"
echo -e "\e[96m        |                                                     |                                    |"
echo -e "\e[96m        |                [\e[92m1\e[96m]==> SOCIAL MEDIA [✓]              |                                    |"
echo -e "\e[96m        |                [\e[92m2\e[96m]==> LOCTAION TRACKER [✓]          |                                    |"
echo -e "\e[96m        |                [\e[92m3\e[96m]==> GAME PSHISH                   |                                    |"
echo -e "\e[96m        |                [\e[92m4\e[96m]==> ABOUT                         |                                    |"
echo -e "\e[96m        |                [\e[92m5\e[96m]==> UPDATE                        |                                    |"
echo -e "\e[96m        |                [\e[92m6\e[96m]==> EXIT                          |                                    |"
echo -e "\e[96m        |                [\e[92m7\e[96m]==> CHECK SPEED                   |                                    |"
echo -e "\e[96m        |                [\e[93m00\e[98m]==> DEBUGGING MODE                |                                    |"
echo -e "\e[96m        |                                                     |                                                |"
echo -e "\e[96m        |-----------------------------------------------------|                                    |"
echo -e "\e[96m        |---------------------\e[91mHACK3R\e[96m----------------------|                                    |"
echo -e "\e[96m        |-----------------------------------------------------|                                    |"


}
choose
read -p " SELECT A OPTION :    " OP




option(){


case $OP in
1)
clear 
bash social.sh
;;
2)
bash loc.sh
;;
4)
clear
echo -e "\e[96m \t\t\t|------------------------------------------------------|"       
echo -e "\e[96m\t\t\t |             SUKHDEVR898                              |"   
echo -e "\e[96m\t\t\t |      FACEBOOK : https://m.facebook.com/sukhdevr898   |"
echo -e "\e[96m\t\t\t |     INSTAGRAM : https://m.instagram.com/sukhdevr898  |"
echo -e "\e[96m\t\t\t |       WEBSITE : https://sukhdevr898.site123.me       |"
echo -e "\e[96m\t\t\t |                                                      |"
echo -e "\e[96m\t\t\t |------------------------------------------------------|"
echo -e "\e[96m\t\t\t |                                                      |"
echo -e "\e[96m\t\t\t |                                                      |"
echo -e "\e[96m\t\t\t |                                                      |"
echo -e "\e[96m\t\t\t |                                                      |"
echo -e "\e[96m\t\t\t |                                                      |"
echo -e "\e[96m\t\t\t |                                                      |"
echo -e "\e[96m\t\t\t |                                                      |"
echo -e "\e[96m\t\t\t |------------------------------------------------------|"
sleep 5.0
bash joker.sh
;;
3) 
clear
bash game.sh
;;
5)
echo -e "\e[98m\t\t\t PLEASE WAIT.....!"
echo -e "\e[98m\t\t\t UPDATE CHECKING.....!"
sleep 5.0
wget -q --spider https://raw.githubusercontent.com/sukhdevr898/joker/main/update1.0
if [ $? -eq 0 ];
then 
echo -e "\e[96m\t\t\t |------------------------------------------------------|"
echo -e "\e[96m\t\t\t |    TOOL ARLEADY UPDATED VERSION    [✓]               |"
echo -e "\e[96m\t\t\t |------------------------------------------------------|"
bash joker.sh
else 
echo -e "\e[96m\t\t\t |------------------------------------------------------|"   
echo -e "\e[96m\t\t\t |    UPDATE AVAILABLE  [✓]                             |"
echo -e "\e[96m\t\t\t |------------------------------------------------------|"
fi
echo -e "DO YOU WANT TO UPDATE THIS TOOL "
read -p "Y OR N " UP
case $UP in
Y)
cd $HOME
rm -rf joker
git clone https://github.com/sukhdevr898/joker/
 cd joker
bash setup.sh
;;
y)
cd $HOME
rm -rf joker
git clone https://github.com/sukhdevr898/joker/
cd joker
bash setup.sh
;;
*)

bash joker.sh
esac
;;
6) 
exit 1
;;
7)
bash spd.sh
;;
00)
clear
echo -e "\e[98m DEBUGGING MODE STARING.....!!"
sleep 10.0
bash -x joker.sh
;;
*)
echo -e "\e[96m\t\t\t |------------------------------------------------------|"   
echo -e "\e[96m\t\t\t |           SELECT VAILID OPTION [×]                   |"
echo -e "\e[96m\t\t\t |------------------------------------------------------|"
bash joker.sh
;;
esac
}
option


