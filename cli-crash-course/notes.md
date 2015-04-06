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
* -R  recurseively list subdirectories
* -r  reverses sorting
* -S  sort files by size
* -l  long format, gives more details for each item

## rmdir
* -p  delete each component of path starting with last (must be empty)
* removing directories with rmdir requires that you specify the full dir path; can't use "rmdir -p first/second/not_last_dir/*" to remove "/first/second/not_last_dir/second_to_last/last"

## 










