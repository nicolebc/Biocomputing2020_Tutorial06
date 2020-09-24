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
wages16=$(cat wages.csv | cut -d , -f 3,4 | sort -V | grep -w "^16" | tail -n 1 | cut -d , -f 2) 

wages12=$(cat wages.csv | cut -d , -f 3,4 | sort -V | grep -w "^12" | tail -n 1 | cut -d , -f 2)

echo "The difference in wage is" 
echo "$wages16 - $wages12" | bc
