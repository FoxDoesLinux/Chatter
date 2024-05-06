#!/bin/bash

rm -f client_data.sh
echo "Enter target IP: "
read IP
touch client_data.sh
echo "#!/bin/bash" > client_data.sh
echo "ncat $IP 50000" >> client_data.sh
chmod +x client_data.sh
bash client_data.sh
