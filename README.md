Project Title:
==================
Fetching the data like Company Name for the Required MAC Addresses through hitting the REST API(https://macaddress.io)
 
  
 Details of used Language and Tools
 ==================================

 | Programming Language | Scripting Language | Containerization_Tool | Created_By | Creation_Date |
 | --- | --- | --- | --- | --- |
 | python3 | shell scripting | docker | Ugander Dabbara | 2019-06-18 | 
 
 
Description: 
=================


   Scripting a python code using (macaddress.io/api) (REST API database) and it should display output as in the database and then          dockerized.(Using mutli-satge Dockerfile and create the Docker Image and run the image and get proper output)

Pre-Requisites:
=================
 - RESTAPI databse (https://macaddress.io/)                                                                                                 
 - Operating System (Linux)                                                                                                         
 - Install python3                                                                                                                         
 - Install docker

Process of Execution:
 ==========================
- This script has two arguments i.e., argument1 is API_KEY and argument2 is MAC_ADDRESS.  

- Generate the API_KEY from https://macaddress.io/ .

- Write the python script with two runtime arguments and display the output of macAddressDetails.  
  Execute the python script like i.e., 

  ```
                $ python3 mac_addrs.py <API_KEY> <MAC_ADDRESS> 
  
  ```

- Write the multli-stage dockerfile.  

- Build the Image using Dockerfile and then Run the Image like i.e.,

  ```
                $ docker build -t <tagname> <path of dockerfile>
                $ docker run -it <tagname>/<ImageID> <API_KEY> <MAC_ADDRESS>
  
  ```
  
- Create bash script **docker_script.sh** with the above two docker commands includes and establish security.

- Execute the bash script.
    - build the image
    - create one text file like mac_addrs.txt and maintain all MacAddresses in this file.
    - execute the script and display the output according to that MAC_ADDRESS found in mac_addrs.txt file if mac_addrs.txt file not           found it will display README.md.

  ```
                $ bash docker-script.sh
                Enter API Key: <API_KEY>
                
                Output is like this:
                
                Below details are vendorDetails:
                Company Name is: Cumulus Networks, Inc
                Comapany Address is: 650 Castro Street, suite 120-245 Mountain View  CA  94041 US
                CountryCode is: US
                oui is: 443839
                MacAddress is: 44:38:39:ff:ef:57
