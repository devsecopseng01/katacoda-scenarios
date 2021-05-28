Let's run the same command again, but this time with the parameter `-d'.
This parameter tells docker to run the container in 'detached' mode, meaning it will run the background. 
Also lets give it a unique name, for example "coffee".

`docker run --name "coffee" -d nginx`{{execute}}

To verify our container has started, run the following command:

`docker ps`{{execute}}

This command will list all containers that are actively up and running. PS stands for "process status"
You should see our container called coffee on the list, meaning the container is up and running. You should also see "80/TCP" under ports (since the default port for webservers is 80) . This will come in quite handy in a bit.

Running the command `docker ps -a`{{execute}}, will also show a container using nginx in a stopped state.
This is our container we executed before in foreground mode (without -d).

<h3>Working with images and containers</h3>

You probably noticed the 2nd time we created a container using the same image, the creation time was much shorter.
This is because docker did not have to download the image again from the public registry, instead it used the previously downloaded image and used it to create the container.

Now lets see if our nginx container is working as intended. As we it was shown earlier the nginx container is using port 80 internally.

Run the following command to determine the internal IP address of the container:
`docker inspect "coffee" | grep IPAddress`{{execute}}

`inspect` is a command used to get various information about a container, but for now we only needed the IP address.

Now that we have the IP of the container, lets use `curl' to communicate with it on port 80.

example: <b> curl 172.0.0.1:80 </b>




https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/