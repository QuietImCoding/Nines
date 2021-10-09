# Call the API to get all the metadata
for k in `seq 0 50 750`; do curl --request GET \
				 --url "https://api.opensea.io/api/v1/assets?order_direction=desc&offset=$k&limit=50&collection=nines-the-game" > resultfile_$k.json; done

# Parse metadata using jq and smoosh it all together
cat resultfile_* | jq '.assets[] | .name' > allnames

# Calc non-unique NFTs
echo "Non Unique NFTs found:"
cat allnames | sort | uniq -d

# Cleanup the files
rm resultfile_*

