#!/bin/bash


<< task
Deploying django app and handling code for errors
task

<< previous_code
code_clone() {
	
	echo "Cloning the django notes app......"
	git clone https://github.com/LondheShubham153/django-notes-app.git
}

install_requirements() {
	
	echo "Installing Dependencies...."
	sudo apt-get install docker.io nginx -y

} 

required_restarts () {

	echo" Restarting docker and nginx..... "
	sudo chown $USER /var/run/docker.sock
	sudo systemctl enable docker
	sudo systemctl enable ngnix
	sudo systemctl restart docker

}

deploy () {

	echo "Building the app...."
	docker build -t notes-app .
	echo "Running the app..."
	docker run -d -p 8000:8000 notes-app:latest

}

echo "******************* DEPLOYMENT STARTED ***********************"
if ! code_clone; then
	echo "The code directory already exist."
	cd django-notes-app
	 
fi

if ! install_requirements; then
	echo "Installation has failed"
	exit 1
fi

if ! required_restarts; then
	echo "System Fault identified"
	exit 1
fi
deploy

echo "******************* DEPLOYMENT DONE ***********************"

echo "App is running at http://localhost:8000/"

previous_code

#!/bin/bash
# Deploying django app and handling code for errors

code_clone() {
    echo "Cloning the django notes app......"
    git clone https://github.com/LondheShubham153/django-notes-app.git
}

install_requirements() {
    echo "Installing Dependencies...."
    sudo apt-get install docker.io nginx -y
}

required_restarts() {
    echo "Restarting docker and nginx....."   # Fix 1: space after echo
    sudo chown $USER /var/run/docker.sock
    sudo systemctl enable docker
    sudo systemctl enable nginx              # Fix 2: was "ngnix"
    sudo systemctl restart docker
}

<< deploy 

    deploy() {
    echo "Building the app...."
    docker build -t notes-app .
    echo "Running the app..."
    docker run -d -p 8000:8000 notes-app:latest
} 

deploy

deploy() {
    echo "Building the app...."
    docker build -t notes-app .
    echo "Running the app..."
    docker compose up -d --force-recreate
}

echo "** DEPLOYMENT STARTED **"

if ! code_clone; then
    echo "The code directory already exists."
fi

cd django-notes-app   # Fix 3: always cd here, not just on clone failure

if ! install_requirements; then
    echo "Installation has failed"
    exit 1
fi

if ! required_restarts; then
    echo "System Fault identified"
    exit 1
fi

if ! deploy; then
    echo "Deployment Failed, Logs will sended to admin. "
	exit 1
fi

echo "************************** DEPLOYMENT DONE **********************************"
