user_count=$(cut -d: -f1 /etc/passwd | wc -l)
echo "Number of users: $user_count"