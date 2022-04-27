wscat -c "ws://192.168.86.29:8008/stream?token=AsimGilSZ6wMPs8" --auth "admin:Winter11==" | xargs -I '{}' -d$'\n' bash onmessage.sh {}
