file=abc.txt
# command a
if [ ! -f "$file" ]; then
       echo "$file"
fi
# command b
test -f "$file" || echo "$file"
# command c
[ -f "$file" ] || echo "$file"
