# VPN
* therre are two ways to connect to a private instance
* 1. first connect to public instance then connect to private instance this is known as jump host
* 2. VPN
* the vpn we genrelly used in companys is chyko vpn
* it is depends on forward proxy
#### my pc ----> VPN ----> instance
* to install openvpn open browser search or openvpn install you can see a github account open it copy the below links and run in instance
sudo su -
curl -O https://raw.githubusercontent.com/angristan/openvpn-install/master/openvpn-install.sh
chmod +x openvpn-install.sh
./openvpn-install.sh
public ip_address - 54.81.93.135
ipv6 - no
default port - yes
tcp - 2
DNS - give any number all will work preffered 11
comppression - no
encryption - no
* app get installed it ask to create a user
clientname : harikrishna
passwordless client : 2 it gives a key
* now copy and store the key file value
ls -l
cat harikrishna.ovpn
copy above file with .ovpn extention save it after installing openvpn open it and upload the opvn file in it by using upload file option
install openvpn connect app in your pc 
* now open open vpc and click on add + and upload file upload our saved harikrishna.ovpn file
* this vpn subnet is must connect to main subnet through peering connection 



