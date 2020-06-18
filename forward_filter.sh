# 全パケットのFORWARD禁止
sudo iptables -P FORWARD DROP

# IPマスカレード設定
sudo iptables -t nat -A POSTROUTING -o wlan0 -j MASQUERADE
sudo iptables -t nat -A POSTROUTING -o usb0 -j MASQUERADE

# eth0からのエコーリクエスト(リプライ)を許可
sudo iptables -A FORWARD -p icmp --icmp-type 8 -i eth0 -j ACCEPT
sudo iptables -A FORWARD -p icmp --icmp-type 0 -o eth0 -j ACCEPT

