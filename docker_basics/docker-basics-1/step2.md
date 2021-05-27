Let's run the same command again, but this time with the parameter `-d'.
This parameter tells docker to run the container in 'detached' mode, meaning it will run the background. 
Also lets give it a unique name, for example "coffee".

`docker run --name "coffee" -d nginx`{{execute}}

To verify our container has started, run the following command:

`docker ps`{{execute}}

This command will list all containers that are actively up and running. PS stands for "process status"
You should see our container called coffee on the list, meaning the container is up and running.