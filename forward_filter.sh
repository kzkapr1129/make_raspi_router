// 全てDROP
sudo iptables -P FORWARD DROP
sudo iptables -P INPUT DROP
sudo iptables -P OUTPUT DROP

// DNSの許可
sudo iptables -A INPUT -p udp --dport 53 -j ACCEPT
sudo iptables -A INPUT -p udp --sport 53 -j ACCEPT
sudo iptables -A OUTPUT -p udp --dport 53 -j ACCEPT
sudo iptables -A OUTPUT -p udp --sport 53 -j ACCEPT

// market speed許可
// 「https://search.arin.net/rdap/?query=MSFT&searchFilter=entity」でMSFTやMICROSOFTが使っているIP以外を許可する
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 0.0.0.0-4.16.39.175 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 4.16.39.192-4.127.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 4.192.0.0-8.6.175.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 8.6.177.0-13.63.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 13.108.0.0-19.255.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 20.32.0.0-20.32.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 20.129.0.0-20.129.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 20.131.0.0-20.134.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 20.137.0.0-20.139.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 20.142.0.0-20.142.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 20.148.0.0-20.149.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 20.154.0.0-20.156.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 21.0.0.0-23.95.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 23.104.0.0-40.63.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 40.72.0.0-40.73.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 40.125.128.0-40.125.255.255  -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 40.126.64.0-52.95.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 52.116.0.0-52.119.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 52.124.0.0-52.124.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 52.128.0.0-52.131.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 52.144.0.0-52.144.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 52.192.0.0-52.223.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 53.0.0.0-64.3.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 64.4.64.0-65.51.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 65.56.0.0-66.119.143.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 66.119.160.0-67.74.34.31 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 67.74.34.64-67.75.2.159 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 67.75.2.192-68.17.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 68.20.0.0-68.153.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 68.156.0.0-68.209.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 68.212.0.0-68.217.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 68.222.0.0-70.151.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 70.154.0.0-70.155.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 70.158.0.0-72.143.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 72.148.0.0-72.151.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 72.156.0.0-74.159.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 74.164.0.0-74.175.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 74.180.0.0-74.223.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 74.228.0.0-74.233.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 74.236.0.0-74.239.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 74.244.0.0-74.247.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 74.250.0.0-98.63.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 98.68.0.0-98.69.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 98.72.0.0-104.39.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 104.48.0.0-104.207.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 104.216.0.0-108.139.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 108.144.0.0-138.195.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 138.197.0.0-146.146.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 146.148.0.0-150.170.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 150.172.0.0-157.53.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 157.61.0.0-191.231.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 191.236.0.0-204.13.119.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 204.13.128.0-204.14.179.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 204.14.184.0-204.152.17.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 204.152.20.0-208.48.28.191 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 208.48.29.0-208.49.28.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 208.49.29.16-208.76.43.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 208.76.48.0-208.83.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --dst-range 208.84.8.0-255.255.255.255 -j ACCEPT

sudo iptables -A FORWARD -p tcp -m iprange --src-range 0.0.0.0-4.16.39.175 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 4.16.39.192-4.127.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 4.192.0.0-8.6.175.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 8.6.177.0-13.63.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 13.108.0.0-19.255.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 20.32.0.0-20.32.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 20.129.0.0-20.129.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 20.131.0.0-20.134.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 20.137.0.0-20.139.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 20.142.0.0-20.142.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 20.148.0.0-20.149.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 20.154.0.0-20.156.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 21.0.0.0-23.95.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 23.104.0.0-40.63.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 40.72.0.0-40.73.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 40.125.128.0-40.125.255.255  -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 40.126.64.0-52.95.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 52.116.0.0-52.119.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 52.124.0.0-52.124.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 52.128.0.0-52.131.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 52.144.0.0-52.144.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 52.192.0.0-52.223.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 53.0.0.0-64.3.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 64.4.64.0-65.51.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 65.56.0.0-66.119.143.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 66.119.160.0-67.74.34.31 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 67.74.34.64-67.75.2.159 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 67.75.2.192-68.17.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 68.20.0.0-68.153.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 68.156.0.0-68.209.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 68.212.0.0-68.217.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 68.222.0.0-70.151.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 70.154.0.0-70.155.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 70.158.0.0-72.143.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 72.148.0.0-72.151.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 72.156.0.0-74.159.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 74.164.0.0-74.175.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 74.180.0.0-74.223.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 74.228.0.0-74.233.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 74.236.0.0-74.239.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 74.244.0.0-74.247.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 74.250.0.0-98.63.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 98.68.0.0-98.69.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 98.72.0.0-104.39.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 104.48.0.0-104.207.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 104.216.0.0-108.139.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 108.144.0.0-138.195.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 138.197.0.0-146.146.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 146.148.0.0-150.170.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 150.172.0.0-157.53.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 157.61.0.0-191.231.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 191.236.0.0-204.13.119.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 204.13.128.0-204.14.179.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 204.14.184.0-204.152.17.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 204.152.20.0-208.48.28.191 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 208.48.29.0-208.49.28.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 208.49.29.16-208.76.43.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 208.76.48.0-208.83.255.255 -j ACCEPT
sudo iptables -A FORWARD -p tcp -m iprange --src-range 208.84.8.0-255.255.255.255 -j ACCEPT


