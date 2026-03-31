#!bin/bash

clone_repository(){
	echo "Cloning Repository Retail-Data-Analytics..."
	git clone https://github.com/akpradhan04/Retail-Data-Analytics.git
}

create_venv(){
	echo "Creating Virtual Environment..."
	cd Retail-Data-Analytics
	python3 -m venv .myvenv
}

echo "********Bash Script Started*************"
clone_repository
create_venv
echo "********Bash Script Completed***********"
