FROM ubuntu
RUN apt update
RUN apt dist-upgrade -y
RUN apt install net-tools iputils-ping nano -y

##WORKDIR##
#RUN mkdir /datos
#WORKDIR  /datos
#RUN touch f1.txt
#RUN mkdir /datos1
#WORKDIR  /datos1
#RUN touch f2.txt

##COPY##
#COPY 1.txt ./
#COPY 2.txt /datos

##EXPOSE##
RUN apt install -y apache2
EXPOSE 80
ADD apache.sh /root

##CMD##
CMD /root/apache.sh


##ENTRYPOINT##
#ENTRYPOINT ["/bin/bash"]

