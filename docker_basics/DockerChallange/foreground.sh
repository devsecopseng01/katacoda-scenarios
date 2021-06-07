echo "Starting Katacoda... This may take a few moments [[HOST_IP]]"

echo "[[HOST_IP]] docker" >> /etc/hosts 

while [ ! -f /usr/local/bin/start.sh ]; do sleep 1; done; sleep 1; /usr/local/bin/start.sh