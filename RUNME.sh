#!/bin/bash

# Install Packages
./packages/root_script.sh
./packages/corepkg_installer.sh
#./packages/codingpkg_installer.sh

# Move Services
./services_scripts/services_setup_script.sh
