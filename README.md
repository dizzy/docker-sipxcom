# docker-sipxcom
sipxcom docker image

<h2>Install as</h2>
docker pull dizzy/sipxcom:15.08

<h2>Run it as</h2>
sudo docker run -ti -d --net=host --privileged --name sipxcom dizzy/sipxcom:latest

<h4>Attach session</h4>
sudo docker exec -it sipxcom bash

Make sure sshd started (service sshd start) and /etc/resolv.conf points to your machine IP (TBD - do this automaticaly). Run sipxecs-setup, and configure system

