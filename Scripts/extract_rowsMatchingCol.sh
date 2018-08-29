#!/bin/bash 

### If we have 2 files and we want to extract 
### all the rows from File 1 where the entries a certain column match rows in File 2


### Assume file 1 is A 
### and file 2 is b 


 awk 'FILENAME == "A" { remember[$1 $2]=1 ;}
 FILENAME != "A" { if ( $1 $2 in remember ) print ; } ' A b
