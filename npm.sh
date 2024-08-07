PORT=$(netstat -tulpn | grep 3000 | awk '{print $4}' | sed 's/.*://')

if  [[ "$PORT" -eq 3000 ]];

then
    echo "ok"

else

    npm start &

fi