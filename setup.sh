clear
arch=`uname`
		if [[ ("$arch" == *'Darwin'*) ]]; then
			brew install wget
            brew install php
            brew install curl
            brew install grep
			brew install unzip
			brew install lolcat
			brew install localxpose

		else
			apt install wget
            apt install php
            apt install curl
            apt install grep
			apt install unzip
			apt install lolcat
			if [[ -e "loclx" ]]; then
		    	echo -e "\n${GREEN}[${WHITE}+${GREEN}]${GREEN} Cloudflared already installed."
			else
				echo -e "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} Installing Cloudflared..."${WHITE}
				wget https://api.localxpose.io/api/v2/downloads/loclx-linux-arm64.zip
				unzip loclx-linux-arm64.zip
				chmod +x loclx
				rm -rf loclx-linux-arm64.zip
			fi
		fi

chmod +x angelwings.sh
clear
./angelwings.sh