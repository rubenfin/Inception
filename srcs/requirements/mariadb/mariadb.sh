#!/bin/bash
set -e

echo "Updating package list..."
apt update

echo "Installing MariaDB server..."
DEBIAN_FRONTEND=noninteractive apt install -y mariadb-server

echo "MariaDB installed successfully!"
