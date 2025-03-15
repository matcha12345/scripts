#!/bin/bash

# Define variables
VERSION="0.60.0"
TARFILE="trivy_${VERSION}_Linux-64bit.tar.gz"
DOWNLOAD_URL="https://github.com/aquasecurity/trivy/releases/download/v${VERSION}/${TARFILE}"

# Download Trivy
wget ${DOWNLOAD_URL}

# Extract the tarball
tar zxvf ${TARFILE}

# Move the binary to /usr/local/bin
sudo mv trivy /usr/local/bin/

# Ensure the binary is executable
sudo chmod +x /usr/local/bin/trivy

# Verify installation
trivy --version
