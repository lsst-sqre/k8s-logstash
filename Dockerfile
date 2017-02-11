FROM       logstash:5.2.0
MAINTAINER sqre-admin
LABEL      description="Logstash for Kubernetes nodes" \
           name="lsstsqre/k8s-logstash"
RUN        mkdir /opt/logstash
COPY       logstash.conf /opt/logstash/
CMD	   [ "-f", "/opt/logstash/logstash.conf" ]
