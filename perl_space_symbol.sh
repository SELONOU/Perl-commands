for j in *.csv;
	do perl -p -i -e 's/"//g;' "$j" && perl -p -i -e 's/\t//g;' "$j";
	done
