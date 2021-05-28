In order to access our container outside our sandbox here (the <i>outer world</i>), 
we need to map a port on our host to port 80 on the container.
We can do this by adding the `-p` parameter to the docker run command.
So lets start up a new container, called Coffee2, using the very same nginx image we have been using so far.

`docker run --name "coffee" -d -p 8081:80 nginx`{{execute}}