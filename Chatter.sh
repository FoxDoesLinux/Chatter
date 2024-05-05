#!/bin/bash

rm -f data.sh
echo "Making or connecting to a server? (making/connecting): "
read INPUT

if [[ $INPUT == "making" ]]; then
  touch data.sh
  echo "#!/bin/bash" > data.sh
  echo "nc -v -l 50000" >> data.sh
  chmod +x data.sh
  bash data.sh
elif [[ $INPUT == "connecting" ]]; then
  echo "Enter target IP: "
  read IP
  touch data.sh
  echo "#!/bin/bash" > data.sh
  echo "nc -v $IP 50000" >> data.sh
  chmod +x data.sh
  bash data.sh
fi
