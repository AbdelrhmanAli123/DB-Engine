#!/bin/bash
PS3="Insert the number of Database to connect: "       
echo
echo "
                           ..................Droping Database:...................

"
echo
echo "Your Database list 
"

cd ../DatabaseEnigieDirs
echo "Your Database list 
"
arr=(`ls -F | grep / | tr / " "`)


select choice in  ${arr[*]}
do          
        if [ $REPLY -gt ${#arr[*]} ];then
            echo " 
            $REPLAY not in the list
            "
            continue
        else
             cd ../DatabaseEnigieDirs/${arr[${REPLY}-1]}


                
                echo "
                 
  you're connected to ${arr[${REPLY}-1]} Database successfully !
                 
                 
                 "
                break 
            
        fi
    
done               

PS3=" Type your choice number : "

 select choice in Create_table List_tables Drop_table Insert_in_table Select_from_table Delete_from_table Update_from_table 
 do
	 case $choice in 
		 Create_table ) 
          echo "
		 creating table..."
			 ../../Scripts/create_table.sh
			 ;;
		 List_tables )
          echo "listing tables... "
			 ../../Scripts/list_tables.sh
			 ;;
		 Drop_table ) 
         echo "Dropping table..."
			 ../../Scripts/drop_table.sh
			 ;;
		 Insert_in_table ) 
         echo "inserting in table..."
			../../Scripts/insert_in_table.sh
			 ;;
		 Select_from_table ) 
         echo "Selecting from table..."
			../../Scripts/select_from_table.sh
			 ;;
		 Delete_from_table ) 
         echo "Deletting from table..."
			 ../../Scripts/delete_from_table.sh
			 ;;
		Update_from_table )
         echo "Updating from table..."
			 ../../Scripts/update_from_table.sh
			 ;;
		 * ) "not a propriate choice try again "
			 ;;
	 esac
 done



cd - > /dev/null

