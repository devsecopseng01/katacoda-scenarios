Wordpress is a popular blog/cms engine that can be used to create any kind of website or blog.
For the most part we will be using what we have learned earlier to fire up a wordpress container and make it available to the external world.  


<h3>Start up MariaDB</h3>


`docker run -e MYSQL_ROOT_PASSWORD=<password> -e MYSQL_DATABASE=wordpress --name wordpressdb -v "$PWD/database":/var/lib/mysql -d mariadb:latest`{{execute}}

If you run the command above, it will return an error, please specify a db password then re run the command.

What did we do?

A container can take up environment variables, in MariaDB's case, amongst others, these can be:

`-e MYSQL_ROOT_PASSWORD` = The root user's password, use 'hyphens'.
`-e MYSQL_DATABASE` = Name of the database to be created, in our case: wordpress

Docker specific input:

`--name` = This should be familiar from before, this will be the name of the container.

`-d` = Also nothing new, run it in detached mode

`-v` = We will cover these more in depth later. For now it's enough if you know this is a named volume to map two directories. One on the OS file system ($PWD/database) to the containers file system `/var/lib/mysql` to ensure data persistence. When you stop and start the container again the data will be retained. More to come on volumes in a later lesson.

`mariadb:latest` = the latest MariaDB image to be downloaded/used


execute `docker ps` to see if the MariaDB container is indeed up and running.
Once this is done, lets fire up our WordPress container in the next step.
