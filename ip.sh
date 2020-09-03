#jx.shell.ip.sh.v01.01.2020-09-01 first release

#myping does ping flooding, flooding (-f with interval -i) requieres high privileges
#TODO "-i 0,2" on some systems gives an error. maybe it's a regional setting, but works changing "," to "." and viceversa

sleeptime=5
#requires some privileges
myping () {
    ping -c 5 -i 0,2 -f -n $1;
    echo -e "\n";
}


while true; do
	echo -e "My public IP:";
	dig txt +short o-o.myaddr.l.google.com @ns1.google.com; 
  echo -e "\n";

  myping 208.67.222.222;
  myping 88.149.128.12;
  myping 1.1.1.1;
  myping 8.8.8.8;
  
  echo -e "Sleeping $sleeptime seconds...\n\n";
  sleep $sleeptime;
	clear;
done


#integrate a rudimental speed test
#
#wget -O /dev/null http://speedtest.tele2.net/10GB.zip
