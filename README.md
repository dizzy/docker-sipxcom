# docker-sipxcom
sipxcom docker image

<h2>Install as</h2>
docker pull dizzy/sipxcom:15.08

<h2>Run it as</h2>
sudo docker run -ti -d --net=host --privileged --name sipxcom dizzy/sipxcom:15.08

<h4>Attach session</h4>
sudo docker exec -it sipxcom bash

Make sure sshd started (service sshd start), /etc/resolv.conf points to your machine IP and that the hostname you are going to use for this installation is added in /etc/hosts (TBD - do this automaticaly). Run sipxecs-setup, and configure system

