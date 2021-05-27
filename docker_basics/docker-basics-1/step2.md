Let's run the same command again, but this time with the parameter `-d'.
This parameter tells docker to run the container in 'detached' mode, meaning it will run the background.

`docker run -d nginx`{{execute}}

To verify our container has started, run the following command:

`docker ps`{{execute}}

This command will list all containers that are actively up and running. PS stands for "process status"