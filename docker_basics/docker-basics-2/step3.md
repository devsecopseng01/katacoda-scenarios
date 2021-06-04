There are different ways of creating a docker image. In this course we will demonstrate the "Dockerfile" method.


 A Dockerfile is text file that contains all the commands/instructions that will be excuted when the docker image is built.
 The commands are more or less executed in the manner of a batch file, from top to bottom, in the order in which they are written.
 These instructions are often referred to as "directives".
 
 
 
 <h3>Lets create our first docker image!</h3>
 First of all let's just check it out again how the default nginx welcome page looks like.
 Create the container and expose it to port 8080 to begin.
 
 `docker run -d -p 8080:80 nginx`{{execute}}
 
 Now click on the link below to see how the default page looks like:
 
 https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/
 
 
 
 
 
 Let's create a seperate directory by running `
 
 
 