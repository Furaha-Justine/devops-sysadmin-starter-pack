#!/bin/bash

echo "DevOps Setup Environment"
echo ""
# Directories
DIRS=("logs" "configs" "scripts")

for dir in "${DIRS[@]}"
do
    if [ -d "$dir" ]; then
        echo "Directory already exists: $dir"
    else
        mkdir "$dir"
        echo "Created directory: $dir"
    fi
done

echo ""

# Create files
if [ -f logs/system.log ]; then
    echo "File already exists: logs/system.log"
else
    echo "System log initialized on $(date)" > logs/system.log
    echo "Created file: logs/system.log"
fi

if [ -f configs/app.conf ]; then
    echo "File already exists: configs/app.conf"
else
    echo "app_name=DevOpsApp" > configs/app.conf
    echo "Created file: configs/app.conf"
fi

if [ -f scripts/backup.sh ]; then
    echo "File already exists: scripts/backup.sh"
else
    echo "echo 'Running backup...'" > scripts/backup.sh
    echo "Created file: scripts/backup.sh"
fi

echo ""

# Set permissions
chmod 644 logs/system.log
chmod 444 configs/app.conf
chmod 755 scripts/backup.sh

echo "Permissions set successfully."
echo ""

# Display directory tree
echo ""
echo "Directory Structure:"
tree .

echo ""
echo "Permissions Overview:"
ls -lR

echo ""
echo "Setup Complete!"
