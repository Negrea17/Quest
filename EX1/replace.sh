#!/bin/bash

# Replace "/" with "\" character in /etc/passwd and redirect to a new file
sed 's/\//\\/g' /etc/passwd > modified_passwd.txt

echo "Replacement completed. Modified content saved to modified_passwd.txt."