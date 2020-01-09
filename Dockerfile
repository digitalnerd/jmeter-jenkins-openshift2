FROM openjdk:8-jre-alpine

ARG JMETER_VER="5.2"

ENV JMETER_HOME /jmeter/apache-jmeter-$JMETER_VER

RUN mkdir /jmeter \
    && cd /jmeter \
    && wget https://archive.apache.org/dist/jmeter/binaries/apache-jmeter-$JMETER_VER.tgz \
    && tar -xzf apache-jmeter-$JMETER_VER.tgz \
    && rm apache-jmeter-$JMETER_VER.tgz \
    && sed -i s/#server.rmi.ssl.disable=false/server.rmi.ssl.disable=true/ $JMETER_HOME/bin/jmeter.properties

# Add Jmeter to the Path
ENV PATH $JMETER_HOME/bin:$PATH
