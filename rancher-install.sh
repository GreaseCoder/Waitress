sudo docker run -d --restart=unless-stopped --privileged  -p 8080:8080 rancher/server:stable

sudo docker run -e CATTLE_AGENT_IP="192.168.1.103" -e CATTLE_CHECK_NAMESERVER=false  --rm --privileged -v /var/run/docker.sock:/var/run/docker.sock -v /var/lib/rancher:/var/lib/rancher rancher/agent:v1.2.11 http://192.168.1.103:8080/v1/scripts/00B87A86F049D197DD86:1640908800000:pWn23K90MlUTaBNlJwFM5DORbs