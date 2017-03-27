FROM docker.elastic.co/logstash/logstash:5.2.2
RUN cd /usr/share/logstash && \
  logstash-plugin install logstash-filter-alter && \
  logstash-plugin install logstash-filter-base64 && \
  logstash-plugin list --verbose
