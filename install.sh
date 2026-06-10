#!/bin/bash

set -e

REPO="vaalaav/myserverinfo"

mkdir -p /usr/local/share

curl -fsSL 
https://raw.githubusercontent.com/${REPO}/main/myserverinfo 
-o /usr/local/bin/myserverinfo

chmod +x /usr/local/bin/myserverinfo

curl -fsSL 
https://raw.githubusercontent.com/${REPO}/main/VERSION 
-o /usr/local/share/myserverinfo.version

echo
echo "Установка завершена."
echo
echo "Запуск:"
echo "myserverinfo"
