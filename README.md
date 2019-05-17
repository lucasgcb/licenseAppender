# About

The licenseAppender script will append whatever is in LICENSE into all Python files
within the project directory the script is run in.

This will affect all Python files in all folders below the script, so if you wish to prevent it run it inside the quarantined folder and top files will be preserved.

If you mess up, run purgeUndo and it will delete the LICENSE you just made.


# Running Example

Run licenseAppender.sh in this repository to apply the [WTFPL](http://www.wtfpl.net/) header to all `.py` scripts within the tree. 

Run purgeUndo.sh to clear it.
