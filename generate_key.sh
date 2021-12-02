#!/bin/bash
echo "GITHUB SSH KEY GENERATOR"

echo "Updating system and installing xclip"
sudo apt-get update
sudo apt-get install xclip

echo "Lists the files in your .ssh directory, if they exist"
ls -al ~/ssh

echo "Generating a new ssh key"
ssh-keygen -t ed25519 -C "your-email-here@domain.com"

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

echo "Coping the contents of the id_ed25519.pub file to your clipboard"
xclip -selection clipboard < ~/.ssh/id_ed25519.pub

echo "Now, follow the steps on github page"
google-chrome https://github.com/settings/keys
