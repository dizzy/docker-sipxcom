# docker-sipxcom
sipxcom docker image

<h2>Install as</h2>
docker pull dizzy/sipxcom:15.04

<h2>Run it as</h2>
docker run -d -p 49160:22 -h sipxcom.local.test dizzy/sipxcom:15.04

<h4>SSH</h4>
- ssh root@localhost -p 49160
- password: admin

Run sipxecs-setup, then connect and configure system at https://sipxcom.local.test

