#Task 1
cat $1 | cut -d , -f 1,2 | tr ',' ' ' | sort -V -k2

#Task 2
echo "Lowest Earning Wages"
cat $1 | cut -d "," -f 1,2,4 | tr "," " " | sort -V -k3 | head -1
echo "Highest Earning Wages"
cut -d "," -f 1,2,4 wages.csv | tr "," " " | sort -V -k3 | tail -2 | head -1
echo "Number of Females top 10 wages"
cut -d "," -f 1,2,4 wages.csv | tr "," " " | sort -V -k3 | tail -11 | grep -E -c "female"

#Task 3

