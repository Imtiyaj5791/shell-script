#!/bin/bash

src=$1
dest=$2

timestamp=$(date '+%Y-%m-%d-%H-%M')

zip -r "$dest/backup-$timestamp.zip"  $src

if [ $? -eq 0 ];
then
        # Backup successful and show in Green colour
    echo -e "\e[32mBackup created successfully]"

else
        # Backup failed and show in red colour
    echo -e "\e[31mBackup failed]"
fi

find "$dest" -name "backup-*.zip" -type f | sort -r | tail -n +4 | xargs rm -f



aws s3 sync "$dest" s3://my-script-backup
