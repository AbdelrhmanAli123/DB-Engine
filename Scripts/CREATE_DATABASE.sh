#!/bin/bash
PS3="#> "
echo "
                      ..................creating Database:...................
                      
"

PS3="#> "
                     echo "NOTE: type (exit) or (e) to get out from this list... 
                     "


while true                  
do
    read -p "insert name: " database     
     
    
            case $database in
                
                "E" | "EXIT" | "Exit" | "e" | "exit")
                    . ./MAIN_SCRIPT
                    ;;
                "" )
                    echo " 
                    ###### you can't insert empty feild ! ######
                    "
                    continue ;;
                *[[:space:]]* | *[[:space:]] | [[:space:]]* )
                    echo " 
               ###### you can't insert space between words or char ! ######
                    "
                    continue ;;
                [0-9]* | *[0-9]* )
                    echo "
            ###### you can't insert number in the first or in the middle of Database name ! ######
                     "
                        continue ;;
                [a-zA-Z] )
                    echo "
                    ###### you can't insert one char only ! ######
                    " 
                        continue ;;
                [a-zA-z_]*[a-zA-Z_] )
                    if [ ! -d "$HOME/DatabaseEngine/DatabaseEnigieDirs/$database" ];then
                        cd ../DatabaseEnigieDirs
                        mkdir $database > /dev/null
                        echo " Done ! you just created the Database succefully"
                        cd - > /dev/null
                        continue 
                    else
            echo "Sorry this Database dir alrady exists !  "
                         continue 
    
                  
                    fi
                        ;;
                * )
                    echo "
                    ###### there is an error ######
                    "
                    continue;;
                    
            esac
    
done

cd - > /dev/null