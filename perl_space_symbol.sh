#!/bin/bash
#====================================================================================================================================
#
#          FILE: perl_space_symbol.sh
# 
# REQUIREMENTS: Put this script in the same directory with all files into you want to remove specific charaters, space,......
# AUTHOR: KANKİNOU SELONOU GAUTİER 
# CREATED: 25-04-2022 
#====================================================================================================================================

for j in *.csv;
	do perl -p -i -e 's/"//g;' "$j" && perl -p -i -e 's/\t//g;' "$j";
	done
