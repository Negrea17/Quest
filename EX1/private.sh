private_ip=$(hostname -I | cut -d' ' -f1)

echo "Private IP address: $private_ip"