if [ -e link.txt ];
then
rm link.txt
fi

curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[-0-9a-z]*\.ngrok.io" > link.txt
