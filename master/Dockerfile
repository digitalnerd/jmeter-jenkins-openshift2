FROM jmeter-base

EXPOSE 60000

WORKDIR $JMETER_HOME
COPY run.sh .
COPY *.jmx ./Tests/
RUN chmod +x ./run.sh

ENTRYPOINT ./run.sh
