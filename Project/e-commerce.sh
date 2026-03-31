#!/bin/bash

clone(){

	echo "---Cloning E-commerce App--"
	git clone https://github.com/justdjango/django-ecommerce

}

Install_requirements(){

	echo " --Intalling Dependencies-- "
	sudo apt-get update -y
	sudo apt-get install docker.io -y
	sudo apt-get install docker-compose -y
                      
}

required_restarts(){
	
	echo "---Restarting Docker---"
	sudo chown $USER /var/run/docker.sock
	sudo systemctl enable docker
	sudo systemctl restart docker
}

deploy(){
	echo "--- Deploying app ---"
	docker-compose up -d
}
echo "----- Deployment Started ----"
if ! clone; then
	echo "Directory Already Exist."
fi

cd django-ecommerce

if ! Install_requirements; then
	echo "Installation failed"
	exit 1
fi

if ! required_restarts; then
	echo "System Fault identified"
	exit 1
fi

deploy

echo "----- Deployment Done -----"
