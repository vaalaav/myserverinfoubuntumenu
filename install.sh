#!/bin/bash

set -e

REPO="YOUR_USERNAME/myserverinfo"
INSTALL_PATH="/usr/local/bin/myserverinfo"

echo "Установка MyServerInfo..."

curl -fsSL 
https://raw.githubusercontent.com/${REPO}/main/myserverinfo 
-o ${INSTALL_PATH}

chmod +x ${INSTALL_PATH}

echo
echo "Установка завершена."
echo
echo "Запуск:"
echo "myserverinfo"
