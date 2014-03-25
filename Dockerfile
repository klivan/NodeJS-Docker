FROM ubuntu
MAINTAINER Ivan Klishch <ivan@klishch.com>

RUN apt-get update 
RUN apt-get install -y python-software-properties python g++ make
RUN echo "deb http://archive.ubuntu.com/ubuntu precise universe" >> /etc/apt/sources.list
RUN add-apt-repository -y ppa:chris-lea/node.js 
RUN apt-get update
RUN apt-get install -y nodejs

ADD ./setup.sh /opt/setup.sh

CMD ["node", "/opt/code/app.js"]

