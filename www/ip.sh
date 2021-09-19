


grep -a 'IP:' ip.txt | cut -d " " -f2 | tr -d '\r'
