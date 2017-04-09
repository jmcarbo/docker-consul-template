# docker-consul-template

```
docker network create -d overlay --attachable apps
docker run -ti --rm -p 8500:8500 --name consul --network apps -e "CONSUL_BIND_INTERFACE=eth0" consul agent -dev -client 0.0.0.0
docker run --network apps -e CONSUL_HTTP_ADDR=consul:8500 --rm -ti consul sh
docker run -ti --rm -v $PWD:/data --network apps -e CONSUL_HTTP_ADDR=consul:8500 jmcarbo/docker-consul-template -consul-addr=consul:8500  -template="/data/in.tpl:/data/out.txt" -once
docker run -ti --rm -v $PWD:/data --network apps -e CONSUL_HTTP_ADDR=consul:8500 jmcarbo/docker-consul-template  -wait="30s:100s" -template="/data/in.tpl:/data/do.sh:bash -c 'chmod +x /data/do.sh;at now -f /data/do.sh"
```
