FROM ubuntu
RUN apt-get update
RUN apt-get install -y at
ADD consul-template /consul-template
ADD sigil /usr/local/bin/sigil
RUN chmod +x /usr/local/bin/sigil
ENTRYPOINT [ "/consul-template" ]
