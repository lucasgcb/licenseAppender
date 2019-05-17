#!/bin/bash
<<COMMENT
   THIS WILL REMOVE LINES WITHOUT COMPARISON USE AT OWN RISK.
   Use this to delete the Python processed License from scripts.
COMMENT
LICENSE=$(cat LICENSE); 
GUARD='#'$(printf -- '-%.0s' {1..78})
PREFIX="# "

echo "$LICENSE" > PythonLICENSE.temp
sed -i 's/^/'"$PREFIX"'/' PythonLICENSE.temp
sed -i '1s/^/'"$GUARD"'\n/' PythonLICENSE.temp
echo "$GUARD" >> PythonLICENSE.temp
PyLICENSE=$(cat PythonLICENSE.temp); 


LINES=$(wc -l PythonLICENSE.temp | awk '{ print $1 }')

for i in `find ./ -name '*.py'` ; 
	do sed -i '1,'$LINES'd' $i
done

rm PythonLICENSE.temp
