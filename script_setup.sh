#!/bin/bash

# Обновление системы
echo "Обновление системы..."
sudo apt-get update -y
sudo apt-get upgrade -y

# Установка необходимых зависимостей
echo "Установка зависимостей..."
sudo apt-get install -y \
 apt-transport-https \
 ca-certificates \
 curl \
 gnupg \
 lsb-release

# Добавление репозитория Docker
echo "Добавление репозитория Docker..."
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
 "deb arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg https://download.docker.com/linux/ubuntu \
 $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Установка Docker
echo "Установка Docker..."
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# Добавление текущего пользователя в группу docker
echo "Добавление пользователя в группу docker..."
sudo usermod -aG docker $USER

# Установка Docker Compose
echo "Установка Docker Compose..."
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-Linux-x86_64" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Установка Nginx
echo "Установка Nginx..."
sudo apt-get install -y nginx

# Настройка автозапуска Nginx
echo "Настройка автозапуска Nginx..."
sudo systemctl enable nginx

# Проверка установки
echo "Проверка установки..."
sudo systemctl start docker
sudo systemctl enable docker
docker --version
docker-compose --version
nginx -v

echo "Установка завершена!"
