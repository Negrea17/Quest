start_uid=1000
end_uid=1010

echo "Users with UID in the range $start_uid-$end_uid:"

while IFS=: read -r username _ uid _; do
    if [ "$uid" -ge "$start_uid" ] && [ "$uid" -le "$end_uid" ]; then
        echo "$username (UID: $uid)"
    fi
done < "/etc/passwd"