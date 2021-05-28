Let's run the same command again, but this time with the parameter `-d'.
This parameter tells docker to run the container in 'detached' mode, meaning it will run the background. 
Also lets give it a unique name, for example "coffee".

`docker run --name "coffee" -d nginx`{{execute}}

To verify our container has started, run the following command:

`docker ps`{{execute}}

This command will list all containers that are actively up and running. PS stands for "process status"
You should see our container called coffee on the list, meaning the container is up and running.

Running the command `docker ps -a`{{execute}}, will also show a container using nginx in a stopped state.
This is our container we executed before in foreground mode (without -d).

<h3>Working with images and containers<h3>

You probably noticed the 2nd time we created a container using the same image, the creation time was much shorter.
This is because docker did not have to download the image again from the public registry, instead it used the previously downloaded image and used it to create the container.


https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/