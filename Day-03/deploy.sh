#!/bin/bash

clone_repository() {
    echo "Cloning Repository Retail-Data-Analytics..."
    git clone https://github.com/akpradhan04/Retail-Data-Analytics.git
}

create_venv() {
    echo "Creating Virtual Environment..."
    python3 -m venv .myvenv
}

activate_venv(){
	venv_dir=".myvenv"

	# rm -rf .myvenv

	if [[ !  -d "$venv_dir" ]]; then
		echo "Virtual Environment Directory '$venv_dir'  Not Found..."
		exit 1
	fi

	source "$venv_dir/bin/activate"

	if [[ -z $VIRTUAL_ENV ]];then
		echo "Failed to Create Virtual Environment..."
		exit 1
	fi

	echo "Virtual Environment Activated..."
	return 0

}


echo "********Bash Script Started*************"

# Clone repo if not exists
if [ -d "Retail-Data-Analytics" ]; then
    echo "Repository already exists..."
    cd Retail-Data-Analytics || exit
else
    if clone_repository; then
        cd Retail-Data-Analytics || exit
    else
        echo "Failed to clone repository!"
        exit 1
    fi
fi

# Create virtual environment if not exists
if [ -d ".myvenv" ]; then
    echo "Virtual Environment already exists..."
else
    if ! create_venv; then
        echo "Failed to create virtual environment!"
        exit 1
    fi
fi


activate_venv


echo "********Bash Script Completed***********"
