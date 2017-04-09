FROM ubuntu
ADD consul-template /consul-template
ENTRYPOINT [ "/consul-template" ]
