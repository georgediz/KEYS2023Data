grep "\b1957\b" GapMinderDataAll.txt > 1957-data.txt  ## extracts 1957 data
sed -i 's/ /-/g' 1957-data.txt  ## replaces empty spaces with dashes ‘-’
sort -k6 -b -n 1957-data.txt > 1957-sortedbyGDP.txt  ## sorts by column 6 = ‘gdpPercap’
head -10 1957-sortedbyGDP.txt > 10-poorest-countries-1957_pre.txt  ## get 10 first
tail -10 1957-sortedbyGDP.txt | sort -k6bnr > 10-richest-countries-1957_pre.txt  ## get 10 last in reverse order
cat Headers.txt 10-poorest-countries-1957_pre.txt > 10-poorest-countries-1957.txt  ##add column headers
cat Headers.txt 10-richest-countries-1957_pre.txt > 10-richest-countries-1957.txt  ##add column headers

