#!/bin/bash

ssh_key_file=/Users/Sarah/.ssh/sdubs-redux.pem
remote_server=ubuntu@ec2-34-192-0-181.compute-1.amazonaws.com
local_theme_path=/Users/Sarah/src/air-blog-theme-for-ghost/minimalistic-blog-theme
remote_theme_path=/home/bitnami/apps/ghost/htdocs/content/themes/


rsync -avz $local_theme_path -e "ssh -i $ssh_key_file" $remote_server:$remote_theme_path