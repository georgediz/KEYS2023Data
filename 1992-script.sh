grep "\b1992\b" GapMinderDataAll.txt > 1992-data.txt  ## extracts 1992 data
sed -i 's/ /-/g' 1992-data.txt  ## replaces empty spaces with dashes ‘-’
sort -k6 -b -n 1992-data.txt > 1992-sortedbyGDP.txt  ## sorts by column 6 = ‘gdpPercap’
head -10 1992-sortedbyGDP.txt > 10-poorest-countries-1992_pre.txt  ## get 10 first
tail -10 1992-sortedbyGDP.txt | sort -k6bnr > 10-richest-countries-1992_pre.txt  ## get 10 last in reverse order
cat Headers.txt 10-poorest-countries-1992_pre.txt > 10-poorest-countries-1992.txt  ##add column headers
cat Headers.txt 10-richest-countries-1992_pre.txt > 10-richest-countries-1992.txt  ##add column headers

