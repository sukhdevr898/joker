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

echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
echo -e "\e[94m    DO YOU WANT TO SPEEDTEST AGAIN \n\t\t PRESS ENTER... \n\t\tOTHERWISE TYPE 'n' "
echo -e "\e[94m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ "
read -p " CTRL + C FOR EXIT " spd
If [ $spd == "n" ];
then
bash joker.sh
else
bash spd.sh
fi
