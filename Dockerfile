FROM scratch
ADD consul-template /consul-template
ENTRYPOINT [ "/consul-template" ]
