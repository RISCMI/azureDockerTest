FROM java:7

# Define working directory.
WORKDIR /data

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

ADD . /data

EXPOSE 8081

RUN javac -d /data GreetingServer.java
CMD java -cp /data GreetingServer











