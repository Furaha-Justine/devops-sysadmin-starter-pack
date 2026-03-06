#!/bin/bash

echo "DevOps Setup Environment"

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

# Create files
touch logs/system.log
touch configs/app.conf
touch scripts/backup.sh

# Adding sample content
echo "System log initialized on $(date)" > logs/system.log
echo "app_name=DevOpsApp" > configs/app.conf
echo "echo 'Running backup'" > scripts/backup.sh

# Set permissions
chmod 644 logs/system.log
chmod 444 configs/app.conf
chmod 755 scripts/backup.sh

echo "Permissions set successfully."

# Display directory tree
echo ""
echo "Directory Structure:"
tree .

echo ""
echo "Permissions Overview:"
ls -lR

echo ""
echo "Setup Complete!"
