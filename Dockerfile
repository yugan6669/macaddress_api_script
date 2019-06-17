###############--------------##########-------------############-------------############------------------------###################
#####       //====>   This Dockerfile is responsible for creating a Docker Image using this multi-stage Dockerfile      <====//#####                     
###############--------------##########-------------############-------------############------------------------###################


#multi-stage Dockerfile
#Stage1

#Pull the Base Image
FROM python:3 as First_Base
#Author of the program
LABEL "AUTHOR"="uganderdevops@gmail.com"
#MAINTAINER Ugander Dabbara ugander.dabbara@hcl.com
#Update the apt repository
RUN apt-get update -y
RUN useradd -m pyuser
USER pyuser
#Create the directory python3
RUN mkdir -p /home/pyuser/python3
#where to store the actual file inside the container
WORKDIR /home/pyuser/python3

#Stage2

FROM First_Base
#Copy the scriptfile from localmachine to remote container
COPY ./mac_addrs.py /home/pyuser/python3
#Initially execute command while running the container
#CMD ["python3","mac_addrs.py","API_KEY","MAC_ADDRESS"]
ENTRYPOINT ["python3", "mac_addrs.py"]
