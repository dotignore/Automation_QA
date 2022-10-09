FROM selenium/standalone-chrome:3.141.59-zirconium

RUN sudo apt-get update -qqy \
    && sudo apt-get -qqy upgrade \
    && sudo apt-get -qqy install maven openjdk-8-jdk \
    && sudo rm -rf /var/lib/apt/lists/* /var/cache/apt/*

RUN mkdir /home/seluser/hello-selenium
WORKDIR /home/seluser/hello-selenium

COPY pom.xml .
RUN mvn install
COPY src/ ./src/
