#!/bin/bash
echo "Enter username to create:"
read user
sudo useradd -m "$user"
sudo chmod 700 /home/"$user"
echo "User $user created with secure home directory permissions."
