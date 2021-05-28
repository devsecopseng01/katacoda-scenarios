In order to access our container outside our sandbox here (the <i>outer world</i>), 
we need to map a port on our host to port 80 on the container.
We can do this by adding the `-p` parameter to the docker run command.
So lets start up a new container, called coffee2, using the very same nginx image we have been using so far.

`docker run --name "coffee2" -d -p 8080:80 nginx`{{execute}}

Clicking on the URL below should bring you the nginx welcome page meaning we have successfully installed nginx and exposed to the internet on port 8080.

Alternatively you can run the command curl http://[[HOST_IP]]:8080




https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/