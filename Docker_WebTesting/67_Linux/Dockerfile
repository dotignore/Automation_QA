##############################################################
# console command for run docker clean
# - - - - - - - - - - - - - - - - - 
#
# docker build -t openjdk:8-jre-slim .
#
# docker images
#
# docker run -d -it --name maven_3.6.0 openjdk:8-jre-slim
#
# docker ps
#
# Open console
# docker exec -ti maven_3.6.0 bash
#
# Run tests
# mvn clean test
# 
# mvn clean test -Dsurefire.suiteXmlFiles=testNG.xml
#
# mvn test -Dtest=tests.TestProperties
#
##############################################################

############################
# 1) download 8-jre-slim
############################

# 1 - docker build -t openjdk:8-jre-slim .
# 

############################
# 2) run Docker
############################

FROM openjdk:8-jre-slim

WORKDIR /usr/autotest

# - - - - - - - - - - - - - - - - - 

# upgrade update Linux Debian by docker -> openjdk:8-jre-slim
RUN apt-get update
RUN apt-get upgrade -y

# RUN apt-get install maven -y # not work 3.6.3 by default

# Install Midnight Commander
RUN apt-get install mc -y

# Install Java
RUN apt install default-jre -y
RUN apt install default-jdk -y

# Install Wget
RUN apt-get install wget -y

############################
# 3) copy file to Docker
############################

# Copy project to Docker Image
COPY pom.xml /usr/autotest
COPY testNG.xml /usr/autotest
COPY ./ /usr/autotest

# - - - - - - - - - - - - -
# install Maven 3.6.0
# - - - - - - - - - - - - -

# Manual install Maven 3.6.0 to Linux 
# https://www.decodingdevops.com/how-to-install-maven-in-linux-configure-maven-in-linux/
#
# add patch for work Maven
ENV PATH="${PATH}:/opt/maven/apache-maven-3.6.0/bin"
ENV PATH="${PATH}:/usr/lib/jvm/java-11-openjdk-amd64/bin"
ENV M2_HOME="/opt/maven/apache-maven-3.6.0"
ENV JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"

RUN tar -xzf ./arc/apache-maven-3.6.0-bin.tar.gz
RUN mkdir /opt/maven
RUN mv apache-maven-3.6.0 /opt/maven

# - - - - - - - - - - - - -
# install Maven 3.6.0
# - - - - - - - - - - - - -

# - - - - - - - - - - - - -
# install GOOGLE-CHROME
# - - - - - - - - - - - - -

#RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN apt install /usr/autotest/arc/google-chrome-stable_current_amd64_105.deb -y
RUN google-chrome --version

# PATH="${PATH}:/usr/autotest/Resources/"
# export PATH=$PATH:/usr/autotest/Resources/
# chromedriver_linux --version

# - - - - - - - - - - - - -
# install GOOGLE-CHROME
# - - - - - - - - - - - - -

# checks 
RUN ls /opt/maven/
RUN /opt/maven/apache-maven-3.6.0/bin/mvn -version

############################	
# 4) run mvn
############################
#
# https://linoxide.com/install-google-chrome-on-debian/
# https://tecadmin.net/setup-selenium-with-chromedriver-on-debian/
#
# install chromedriver
# https://stgconsulting.com/running-automated-selenium-tests-from-jenkins-on-linux/
# https://chromedriver.storage.googleapis.com/index.html?path=2.9/
#
# Docker site
# https://docs.nopcommerce.com/en/developer/tutorials/docker.html
#
# https://chromedriver.storage.googleapis.com/104.0.5112.79/chromedriver_mac64.zip
#
# https://chromedriver.storage.googleapis.com/105.0.5195.52/chromedriver_linux64.zip
#
#

RUN rm -r /usr/autotest/arc


# docker pull nopcommerceteam/nopcommerce:4.50.3
# docker run -d -p 80:80 nopcommerceteam/nopcommerce


# Install Maven
#RUN mvn clean install
#CMD ["mvn", "--version"]

# RUN mvn install
# RUN mvn clean test
# ENTRYPOINT mvn clean test

############################
# 5) upload report file from Docker
############################

############################
# 6) stop D
############################


