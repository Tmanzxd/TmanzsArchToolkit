#!/bin/bash
# Move services to respective directory.
sudo mv services/startup.service /etc/systemd/system/
sudo mv services/shutdown.service /etc/systemd/system/
sudo mv services_scripts/startup.sh /usr/local/bin/
sudo mv services_scripts/shutdown.sh /usr/local/bin/

# Make services run on boot & shutdown.
sudo systemctl enable startup.service
sudo systemctl enable shutdown.service

# Start Services.
sudo systemctl start startup.service

# Verify Services
systemctl status startup.service
systemctl status shutdown.service

echo "Should there be any issues make an issue on the github repo! - Tmanz"
