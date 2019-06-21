###############--------------##########-------------############-------------############------------------------###################
##### //====>   This Program is responsible to fetch data from REST API Database with the respective of macaddress      <====//#####
###############--------------##########-------------############-------------############------------------------###################

#/usr/bin/env/python3
#Script for fetch the data from Rest API database with runtime arguments.
#importing the default packages
import urllib.request
import json
import codecs
#paasing the arguments at runtime using sys
import sys
def getData():
  try:
     API_KEY=sys.argv[1]
     MAC_ADDRESS=sys.argv[2]
     #Getting the data from restapi url
     url = 'https://api.macaddress.io/v1?apiKey='+API_KEY+'&output=json&search='+MAC_ADDRESS
     #executing the steps to get output
     json_obj = urllib.request.urlopen(url)
     reader = codecs.getreader("utf-8")
     data = json.load(reader(json_obj))
     print('\n ')
     print('\n ')
  except IndexError as ie:
     print("Please enter API_KEY and MAC_ADDRESS as arguments")
   # print("ie");
  except Exception as e:
     print("Please enter valid API KEY and MAC Address")
   # print("e")
  else:
     #Printing the data from api based database.
     print ("Below details are vendorDetails: ");
     print ("company Name is		: " +data['vendorDetails']['companyName']);
     print ("comapany Address is	: " +data['vendorDetails']['companyAddress']);
     print ("countryCode is		: " +data['vendorDetails']['countryCode']);
     print ("oui is		    	: " +data['vendorDetails']['oui']);
     print ("MacAddress is	    	: " +data['macAddressDetails']['searchTerm']);

if __name__ == "__main__":
     getData()



