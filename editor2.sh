remove='2,8,9,10,15,107'
for f in ./*txt
do
sed 's/|/,/g; s/ /,/g; s/\//,/g; s/55457/ecm-eb-zc1/g; s/55194/ecm-wb-zc2/g; s/56025/ecr-eb-zc1/g; s/55771/ecr-wb-zc1/g; s/56501/srr-eb-zc1/g; s/56279/srr-wb-zc1/g' $f | cut -d, -f$remove > tmp.csv; mv tmp.csv $f
mv -- "$f" "${f%.txt}.csv"
echo "$f"
done