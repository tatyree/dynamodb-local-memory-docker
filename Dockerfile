FROM openjdk:7
RUN mkdir /dynamodb
WORKDIR /dynamodb

EXPOSE 8000

RUN curl -k -L -o /dynamodb/dynamodb.tgz http://dynamodb-local.s3-website-us-west-2.amazonaws.com/dynamodb_local_latest.tar.gz
RUN tar xfz /dynamodb/dynamodb.tgz
ADD run.sh /run.sh
ENTRYPOINT ["/run.sh"]
