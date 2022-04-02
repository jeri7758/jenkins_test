#!/bin/bash
#Author jareer
ssh jeri@localhost -p 2232 <<EOF
cd /var/www/jeri_nginx
git pull origin main
sudo systemctl reload nginx.service
exit
EOF
