#!/bin/bash

echo "
                           ..................Droping Database:...................

"
echo "Your Database list 
"

PS3="Insert the number of Database: "       
cd ../DatabaseEnigieDirs
arr=(`ls -F | grep / | tr / " "`)


select choice in  ${arr[*]}
do          
        if [ $REPLY -gt ${#arr[*]} ];then
            echo " 
            $REPLAY not in the list
            "
            continue
        else

                rm -r ${arr[${REPLY}-1]}
                echo "
                 
 ${arr[${REPLY}-1]} Data base has removed !
                 
                 
                 "
                break 
            
        fi
    
done               


cd - > /dev/null
source ./MAIN_SCRIPT

