FROM openjdk:8-jre

LABEL maintainer="haifeng <yan_hf@neusoft.co.jp>"

ADD https://github.com/gitbucket/gitbucket/releases/download/4.35.3/gitbucket.war /opt/gitbucket.war

RUN ln -s /gitbucket /root/.gitbucket

VOLUME /gitbucket

EXPOSE 8080 29418

CMD ["sh", "-c", "java -Dcom.sun.net.ssl.checkRevocation=false -jar /opt/gitbucket.war" ]
