if grep -Fxq "$1"  /etc/passwd 
then
    echo "Home Directory: " $(grep $1 /etc/passwd | cut -d: -f6)
    echo "Default Shell: " $(grep $1 /etc/passwd | cut -d: -f7)
else
    echo Error.
fi
