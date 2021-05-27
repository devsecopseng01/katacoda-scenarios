One of the hottest IT topics in the 2000s were VMWare and virtualization. 
Recently that's been replaced by Docker and contrainer orchestraction. 
You can think of containers as small virtual machines that contain the dependencies for your application without the devs having to worry where and on what hardware the will the app be deployed.

As a starter, lets check if docker is installed.
`docker version`{{execute}}

The command above should confirm docker is installed as well as tell us which version we are running.



As a starter, lets run our first container:
`docker run -d nginx`{{execute}}
