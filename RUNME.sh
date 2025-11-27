#!/bin/bash

# Install Packages
# DEPRECATED, Read bash script on how to setup sudo and account 
# ./packages/root_script.sh
./packages/corepkg_installer.sh
./packages/aurs_script.sh
# ./packages/codingpkg_installer.sh

# Move Services
./services_scripts/services_setup_script.sh

