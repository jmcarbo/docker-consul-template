FROM ubuntu
RUN apt-get update
RUN apt-get install -y at
ADD consul-template /consul-template
ENTRYPOINT [ "/consul-template" ]
