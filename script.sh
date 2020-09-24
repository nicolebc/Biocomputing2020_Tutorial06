cat $1 | cut -d , -f 1,2 | tr ',' ' ' | sort -k2

# Step 2
echo "Lowest Earning Wages"
cat wages.csv | cut -d "," -f 1,2,4 | tr "," " " | sort -k3 | head -1
echo "Highest Earning Wages"
cut -d "," -f 1,2,4 wages.csv | tr "," " " | sort -k3 | tail -2 | head -1
echo "Number of Females top 10 wages"
cut -d "," -f 1,2,4 wages.csv | tr "," " " | sort -k3 | tail -11 | grep -E -c "female"
