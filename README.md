# About

This is a simple bash script to format and prepend your LICENSE file into the header of your Python project's source files.

## Details

The [licensePrepender](./licensePrepender.sh) script will prepend whatever is in LICENSE into all Python files
within the project directory the script is run in.

This will affect all Python files in all folders below the script. If you wish to prevent it from running in some files, run it inside the folder with the desired files, and so files above it will be preserved.

If you mess up, run [purgeUndo.sh](./purgeUndo.sh) and it will delete the LICENSE you just smeared all over your repo.

## Running Example

Run licensePrepender.sh in this repository to apply the [WTFPL](http://www.wtfpl.net/) header to all `.py` scripts within the tree. 

Run purgeUndo.sh to clear the amount of lines written by licensePrepender.
