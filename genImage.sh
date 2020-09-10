#!/bin/bash
sudo apt-get -y install curl
sudo apt-get -y install jq
URL= curl -H "Accept: application/vnd.github.v3+json" -s https://api.github.com/repos/photonvision/photonvision/releases/tags/Dev | jq '.assets[].browser_download_url'
echo $URL