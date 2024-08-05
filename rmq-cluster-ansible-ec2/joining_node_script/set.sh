#!/bin/bash

# Define the SSH key to add
SSH_KEY="ssh-rsa SRDsrfdtfDRSRDFTdrstfyDRDSTFYFYFFYFb1pF50a6E9BNdMtWnEzH/rNll6GRbHp64wbkwPRZN5oVkqbeaeyQZeNdJIQRutT9JrYXGq3VSi8gBR9itw8+xdJA5KOcQZA2xEbZ0nBuI1auNJZ4Z73ASwWiN3VqYFez9p2Q27PZMgsnmIGI/zVAftreeseseawaed6re4aeygyr5rRSESFfgdrDRDTFdrsrdtftFTDRDTFT jenkins@ip-10-130-56-11.ec2.internal"

# Add the SSH key to authorized_keys, ensuring it's on a new line
echo "$SSH_KEY" | sudo tee -a /home/ubuntu/.ssh/authorized_keys > /dev/null

# Set ownership and permissions
sudo chown -R ubuntu:ubuntu /home/ubuntu/.ssh
sudo chmod 700 /home/ubuntu/.ssh
sudo chmod 600 /home/ubuntu/.ssh/authorized_keys

# Edit the SSH configuration file to uncomment the public authorization line
# The 'sed' command here is just a placeholder; replace with actual uncommenting if needed.
sudo sed -i 's/#PubkeyAuthentication yes/PubkeyAuthentication yes/' /etc/ssh/sshd_config

# Restart the SSH service to apply changes
sudo systemctl restart sshd




