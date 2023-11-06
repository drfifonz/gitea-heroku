FROM gitea/gitea:1.20.5-rootless

COPY run.sh /usr/local/bin/

USER root
RUN chmod +x /usr/local/bin/run.sh

CMD /usr/local/bin/run.sh