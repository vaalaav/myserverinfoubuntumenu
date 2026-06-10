#!/bin/bash

set -e

REPO="vaalaav/myserverinfo"
INSTALL_PATH="/usr/local/bin/myserverinfo"
VERSION_PATH="/usr/local/share/myserverinfo.version"

echo
echo "===================================="
echo "      Установка MyServerInfo"
echo "===================================="
echo

if ! command -v curl >/dev/null 2>&1; then
echo "Устанавливаю curl..."
apt-get update
apt-get install -y curl
fi

mkdir -p /usr/local/share

echo "Скачивание последней версии..."

curl -fsSL 
https://raw.githubusercontent.com/${REPO}/main/myserverinfo 
-o ${INSTALL_PATH}

chmod +x ${INSTALL_PATH}

curl -fsSL 
https://raw.githubusercontent.com/${REPO}/main/VERSION 
-o ${VERSION_PATH}

VERSION=$(cat ${VERSION_PATH})

echo
echo "===================================="
echo "Установка завершена"
echo "Версия: ${VERSION}"
echo "===================================="
echo
echo "Для запуска выполните:"
echo
echo "myserverinfo"
echo
