For now our container is not exposed to the outer world, lets see what happens when we try to access it from a browser by clicking on the link below:

https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/

You will see the service is not responding on port 8080, you can try and change it to 80 as well, the result will be the same.


In order to access our container outside our sandbox here (the <i>outer world</i>), 
we need to map a port on our host to port 80 on the container.
We can do this by adding the `-p` parameter to the docker run command.
So lets start up a new container, called coffee2, using the very same nginx image we have been using so far.

`docker run --name "coffee2" -d -p 8080:80 nginx`{{execute}}

Clicking on the URL below should bring you the nginx welcome page meaning we have successfully installed nginx and exposed to the internet on port 8080.


https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/


Alternatively you can run the command `curl http://[[HOST_IP]]:8080`{{execute}}


<h3>Bonus objective:</h3> delete our container.

In order to delete an actively running container, you must either first `-stop` it, or `-f`orcibly remove it.

So: docker container stop coffee2 then docker container rm coffee2 
Or go with : docker container rm -f coffee2

Running `docker ps`{{execute}} should now indicate that our container is gone.

<h3>Summary</h3>
Congrartulations, if you made it this far, you should now have a basic what images and containers are, how to run a container with specific image, expose to the internet, and delete a container!
Continue to Docker Basics 2 to learn how to work with images as well as create your own image.





