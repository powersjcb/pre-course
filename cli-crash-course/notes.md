# Notes for CLI crash course using Markdown

## To memorize: 
<sub>(items i didn't already know)</sub>
* pushd - push directory
* popd - pop directory
* xargs - execute arguments
* find - find files
* grep - find things inside files
* man - read a manual page
* apropos - find what man page is appropriate
* env - prints env
* export - sets a new env variable
* exit - exits shell
* chmod - change permissions modifiers
* chown - change ownership
* find "STARTDIR -name WILDCARD -print"


## mkdir functionality
Found that mkdir command with nested directorys on creations requires -p flag.
* -m *mode* Sets the file permissions based on the specified mode. Mode args can be any format used by chmod command.
* -p "Creates intermediate directories as required."

## ls tricks
* -1  forces output to be one entry per line
* -r  recursive )
* -a  include directories that start with a dot(".")
* -C  force multi-column ouput
* -F  adds descriptors to end of printed items; paths : "/", executable : "*", symbolic-link : "@", socket : "=", whiteout : "%", FIFO : "|" 
* -R  recursively list subdirectories
* -r  reverses sorting
* -S  sort files by size
* -l  long format, gives more details for each item

## rmdir
* -p  delete each component of path starting with last (must be empty)
* removing directories with rmdir requires that you specify the full dir path; can't use "rmdir -p first/second/not_last_dir/*" to remove "/first/second/not_last_dir/second_to_last/last"

## popd & pushd
* popd  /directory sets dir to snap back to
* pushd snaps back to path set using popd

## cp
* -r  recursive tag for copying all subdirectories & their contents

## cat
* -b  numbers non-blank output lines, starts count from 1
* -n  numbers all output lines, starts count from 1
* -s  forces single \n spacing

## rm
* -rf /   NEVER USE THESE ARGUMENTS... EVER

## pipes & redirection
* |   takes output from left and pipes it to the command on the right
* >>  appends
* >   writes output from left to the file on the right
* <   takes and sends input from the file on the right to the program on the left

    ### Neat examples
    * "cat file1.txt file2.txt | less" combines the two files and presents them with less
    * "echo "content" >> filename.txt"  creates or appends file of filename.txt

## find (files)
* . -name "wildcard" -print   (prints filesnames starting from present directory. quotes around wildcard required)
* ~/ -name "*.pdf" -print > all_pdf.txt (saves the name of all pdfs to file)


## grep (find in file conents)
* grep SEARCH_TEXT FILENAME (usage)
* grep new *.txt  (search all .txt files in directory for the word "new")
* -i  case insensitive

## apropos (reverse help search)
* returns names of commands that have manuals containing the search term

## env
* export PATH=$PATH:/new/location/


