#!/bin/bash

# Step 1: Stop MySQL service
echo "Stopping MySQL service..."
sudo systemctl stop mysqld

# Step 2: Remove MySQL packages
echo "Removing MySQL packages..."
sudo yum remove -y mysql-community-server mysql57-community-release mysql-community-client mysql-community-common mysql-community-libs

# Step 3: Remove MySQL data and configuration files
echo "Removing MySQL data and configuration files..."
sudo rm -rf /var/lib/mysql /etc/my.cnf

# Step 4: Verify removal
echo "Verifying removal..."
if ! rpm -qa | grep -i mysql; then
    echo "MySQL successfully uninstalled."
else
    echo "Some MySQL components may still be installed. Please check manually."
fi
