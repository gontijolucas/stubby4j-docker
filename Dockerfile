FROM delitescere/jdk

ONBUILD ADD stubby.yml /usr/local/stubby.yml

RUN wget https://search.maven.org/remotecontent?filepath=io/github/azagniotov/stubby4j/6.0.1/stubby4j-6.0.1.jar -O /usr/local/stubby4j.jar

CMD java -jar /usr/local/stubby4j.jar -d /usr/local/stubby.yml -l 0.0.0.0 -da -s $STUBBY_PORT
