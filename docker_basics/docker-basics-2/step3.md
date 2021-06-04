There are different ways of creating a docker image. In this course we will demonstrate the "Dockerfile" method.

A Dockerfile is text file that contains all the commands/instructions that will be excuted when the docker image is built.
The commands are more or less executed in the manner of a batch file, from top to bottom, in the order in which they are written.
These instructions are often referred to as directives.
 
 
 
Lets create our first docker image!
Our goal will be to replace the default nginx welcome page with our own webpage.
 
First of all let's just check it out again how the default nginx welcome page looks like.
Create the container and expose it to port 8080 to begin.
 
`docker run -d -p 8080:80 nginx`{{execute}}


Now click on the link below to see how the default page looks like:

https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/
 
 
The page you saw is what we are going to replace. Let's create a seperate directory by running

`mkdir newnginx`{{execute}} 
 
and let's switch to that directory: 
`cd newnginx`{{execute}}

Create our own index.html file using any text editor, for example "vi".

`vi index.html`{{execute}}


What you put here is up to you, but a simple "Hello World!" will also do the trick.
Save your file and exit vi.


Now lets create our dockerfile:

`vi Dockerfile`{{execute}}

Note: the Dockerfile must always be called Dockerfile, with a capital "D", this is a constraint.

Let's put the following instructions in the file:
 
 
 