#!/bin/bash

#make sure virtualenv is installed
sudo pip install virtualenv
sudo pip install --upgrade virtualenv

#Create virtual environment .env
virtualenv .env
source .env/bin/activate
sudo pip install -r requirements.txt

#create executable
echo -e "cd $PWD\nsource .env/bin/activate\npython template_filler.py" >> run.command

#Authorize Executable
chmod u+x run.command
