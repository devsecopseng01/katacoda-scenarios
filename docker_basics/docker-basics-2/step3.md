There are different ways of creating a docker image. In this course we will demonstrate the "Dockerfile" method.


 A Dockerfile is text file that contains all the commands/instructions that will be excuted when the docker image is built.
 The commands are more or less executed in the manner of a batch file, from top to bottom, in the order in which they are written.
 These instructions are often referred to as "directives".
 
 
 
 <h3>Lets create our first docker image!</h3>
 Our goal will be to replace the default nginx welcome page with our own webpage.
 
 First of all let's just check it out again how the default nginx welcome page looks like.
 Create the container and expose it to port 8080 to begin.
 
 `docker run -d -p 8080:80 nginx`{{execute}}
 
 Now click on the link below to see how the default page looks like:
 
 https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/
 
  
The page you saw is what we are going to replace. 
Let's create a seperate directory by running `mkdir newnginx`{{execute}} and let's switch to that directory with `cd newnginx`{{execute}}
Create our own index.html file using any text editor, for example "vi".

`vi index.html`{{execute}}

What you put here is up to you, but a simple "Hello World!" will also do the trick.
Save your file and exit vi. (esc, :, wq)

Now lets create our dockerfile:

`vi Dockerfile`{{execute}}

Note: the Dockerfile must always be called Dockerfile, with a capital "D", this is a constraint.

Let's put the following instructions in the file:

<pre>
FROM nginx:latest
COPY ./index.html /usr/share/nginx/html/index.html
</pre>

The FROM directive will define which image we will be basing our image on (if at all) or if we are going to create a completley new image from the scratch.
The COPY directive will copy our index.html file to the location where nginx is expecting it to be.

Save the Dockerfile and exit the editor.

<h3>Let's build and run our actual image<h3>

`docker build new-nginx-image .`{{execute}}

If all went well our image now should show up when running:
`docker images`{{execute}}

Let's use our newly built image to run a container, and expose it to port 8081 (since 8080) is already in use.

`docker run -d -p 8080:80 nginx`{{execute}}

And lets check it out on port 8081:

 https://[[HOST_SUBDOMAIN]]-8081-[[KATACODA_HOST]].environments.katacoda.com/






 
 
 
 
 