This challenge had a *TEXT*(.txt) file with the flag zipped with two different zipping algorithms namely *bzip2* and *gzip* in a random fashion. 
For instance, flags_inside.gz.bz2.bz2.gz.gz.gz.bz2.gz.... and so on. 

This script decompresses the file recursively using the file program to identify the type of the zipped document until the file type becomes .txt

NB: If you are not certain about the final file type just change the logic for *while* condition in the script.
