#!/bin/bash

STATUS=$(systemctl is-active nginx)
START_TIME=$(systemctl show nginx --property=ActiveEnterTimestamp | cut -d= -f2)
STOP_TIME=$(systemctl show nginx --property=InactiveEnterTimestamp | cut -d= -f2)

echo "⏱️  Agora: $(date +"%Y-%m-%d %H:%M:%S")"

if [ "$STATUS" = "active" ]; then
    echo "✅ Nginx está OPERANDO (desde $START_TIME)"
else
    echo "⚠️  NGINX FORA DE OPERAÇÃO (desde $STOP_TIME)"
fi