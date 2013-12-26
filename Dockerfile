FROM apopelo/java-oracle-1.7

MAINTAINER Andrey Popelo andrey@popelo.com


# Install Apache Solr
ENV SOLR_VERSION 3.6.2
ENV SOLR apache-solr-$SOLR_VERSION
ADD http://archive.apache.org/dist/lucene/solr/$SOLR_VERSION/$SOLR.tgz /opt/$SOLR.tgz
RUN tar -C /opt --extract --file /opt/$SOLR.tgz
RUN mv /opt/$SOLR /opt/solr

# Run Apache Solr
CMD ["/bin/bash", "-c", "cd /opt/solr/example; java -jar start.jar"]

EXPOSE 8983
