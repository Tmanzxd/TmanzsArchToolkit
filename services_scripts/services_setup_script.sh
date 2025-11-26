#!/bin/bash
# Move services to respective directory.
mv services/startup_script.service /etc/systemd/system/
mv services/shutdown_script.service /etc/systemd/system/

# Make services run on boot & shutdown.
sudo systemctl enable startup_script.service
sudo systemctl enable shutdown_script.service

# Start Services.
sudo systemctl start startup_script.service

# Verify Services
systemctl status startup_script.service
systemctl status shutdown_script.service

echo "Should there be any issues make an issue on the github repo! - Tmanz"
