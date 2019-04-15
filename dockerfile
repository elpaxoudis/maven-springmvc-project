FROM ubuntu:18.04

# update staff
RUN apt-get update && apt-get upgrade -y

# install java
RUN apt-get install -y \
openjdk-8-jre \
openjdk-8-jdk \
wget \
git \
build-essential

# install maven
RUN wget http://mirrors.myaegean.gr/apache/maven/maven-3/3.6.0/binaries/apache-maven-3.6.0-bin.tar.gz
RUN tar xvf apache-maven-3.6.0-bin.tar.gz

# setting environment variables
ENV M2_HOME=/apache-maven-3.6.0
ENV M2=$M2_HOME/bin
ENV MAVEN_OPTS='-Xms256m -Xmx512m'
ENV PATH=$M2:$PATH

# share the root project folder with the container
COPY . /app
WORKDIR /app
RUN mvn compile

EXPOSE 8080

ENTRYPOINT [ "mvn", "jetty:run" ]
