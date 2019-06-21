###############--------------##########-------------############-------------############------------------------###################
#####  //====>       This script is responsible for crate Docker Image and Run the Containerized application          <====//  #####                     
###############--------------##########-------------############-------------############------------------------###################

#!/bin/bash
#Scripting for docker image and docker container creation
#While executing passing the API_KEY value at one-time and MacAddresses automatically detect from mac_addrs.txt file and display the output.
arg=``
coun=0
case $@ in
$arg)
     echo " "
     echo "Execution Process: "
     echo  "\n"
     read -p "Enter API Key: "  API_KEY
     echo -e "\n"
     if [ -z "$(cat mac_addrs.txt)" ]; then
             echo  "please provide the mac address details for which the information to be fetched at mac_addrs.txt"
     else
         echo -e "Creation of Docker Image and running the container is in progress...\n"
         for MAC_ADDRESS in `cat mac_addrs.txt`;
           do
              docker image build -t mac_addrs . > /dev/null 2>&1
              docker run -it mac_addrs $API_KEY $MAC_ADDRESS
              echo -e "\n \n "
            done
     fi
;;
*)
   echo "$(cat README.md)"
   ;;

esac

