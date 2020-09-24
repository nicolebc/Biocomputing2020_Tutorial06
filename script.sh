cat $1 | cut -d , -f 1,2 | tr ',' ' ' | sort -k2

