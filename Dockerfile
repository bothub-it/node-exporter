FROM prom/node-exporter

ENV NODE_ID "NODE_ID"
ENV NODE_HOSTNAME "NODE_HOSTNAME"

USER root

COPY node-exporter /etc/node-exporter/
RUN chmod +x /etc/node-exporter/entrypoint.sh

ENTRYPOINT [ "/etc/node-exporter/entrypoint.sh" ]
