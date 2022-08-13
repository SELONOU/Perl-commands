while read lig
do
        awk -F, '{ print $2 "," $1 }' "$lig".csv > "$lig"_out.csv
        perl -i -pe 's/,/ /g' "$lig"_out.csv
        #awk '$1=$1' FS="," OFS=" " "$lig"_out.csv >> "$lig"_out.csv
        perl -p -i -e 's/"//g;' "$lig"_out.csv
        #perl -p -i -e 's/\t//g;' "$lig"_out.csv
done < list1
