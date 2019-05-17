#!/bin/bash
<<COMMENT
   This will take the contents of LICENSE (no extension),
   Make a copy with Python comment prefix and append it 
   to the top of EVERY .py file regardless of path depth.
COMMENT
LICENSE=$(cat LICENSE); 
GUARD='#'$(printf -- '-%.0s' {1..78})
PREFIX="# "

echo "$LICENSE" > PythonLICENSE.temp
sed -i 's/^/'"$PREFIX"'/' PythonLICENSE.temp
sed -i '1s/^/'"$GUARD"'\n/' PythonLICENSE.temp
echo "$GUARD" >> PythonLICENSE.temp
PyLICENSE=$(cat PythonLICENSE.temp); 

for i in `find ./ -name '*.py'` ; 
	do echo "$(echo "$PyLICENSE"; cat $i)" > $i
done

rm PythonLICENSE.temp
