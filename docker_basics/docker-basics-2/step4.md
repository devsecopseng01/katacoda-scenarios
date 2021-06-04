`docker build -t new-nginx-image .`{{execute}}

`build` expects the parameter `-t` which is the name of the image (tag).

If all went well our image now should show up when running:

`docker images`{{execute}}

Let's use our newly built image to run a container, and expose it to port 8081 (since 8080) is already in use.

`docker run -d -p 8080:80 nginx`{{execute}}

And lets check it out on port 8081:

https://[[HOST_SUBDOMAIN]]-8081-[[KATACODA_HOST]].environments.katacoda.com/

And voila, you have created your docker image and now it's up and running.