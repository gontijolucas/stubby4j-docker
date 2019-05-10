FROM delitescere/jdk

ONBUILD ADD stubby.yml /usr/local/stubby.yml

ADD ./build-stub.sh /usr/local/build-stub.sh

RUN chmod +x /usr/local/build-stub.sh

RUN wget http://central.maven.org/maven2/by/stub/stubby4j/3.3.0/stubby4j-3.3.0.jar -O /usr/local/stubby4j.jar
# RUN wget https://search.maven.org/remotecontent?filepath=io/github/azagniotov/stubby4j/6.0.2/stubby4j-6.0.2.jar -O /usr/local/stubby4j.jar

CMD /usr/local/build-stub.sh && java -jar /usr/local/stubby4j.jar -d /usr/local/stubby.yml -l 0.0.0.0 -da -s $STUBBY_PORT
