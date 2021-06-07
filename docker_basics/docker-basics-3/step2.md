
`docker run -e WORDPRESS_DB_USER=root -e WORDPRESS_DB_PASSWORD=<password> --name wordpress --link wordpressdb:mysql -p 80:80 -v "$PWD/html":/var/www/html -d wordpress:latest`{{execute}}
Explanation:
Wordpress specific environment variables:

`WORDPRESS_DB_USER` = this is the root user for the db, might not be the best idea from a security P.O.W. but for the purpose of this exercise, it will do.

`WORDPRESS_DB_PASSWORD` = this is the password for the root user we specified during the MariaDB installation.

Docker specific variables:
`--name`: name of the container

`--link`: creates an alias 'mysql' for the wordpress db container. Note: The --link flag is a legacy feature of Docker. More on networking in a later lesson.

`-p`: Expose the internal port to the host's port of 80.

`-v`: create the volume for wordpress as well.

`-d`: detached mode

`wordpress`: name of the image.


If both commands run successfully, you should be able to access your wordpress website on the URL below.

https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/

Set it up and you're good to go!
