Let's cover some of the basic commands you would often use when working with images.

The official documentation can be found here:  https://docs.docker.com/engine/reference/commandline/images/ and https://docs.docker.com/engine/reference/commandline/image/

<b>To get a list of images already present on the system: </b>


`docker images`{{execute}}
OR
`docker image ls`{{execute}}

A number of images might already come pre-installed on the system, don't be surprised.
You can also filter the results. For example:

`docker image --filter "before=nginx:1.15"`{{execute}}


this will list the images created before nginx version (tag) 1.15. Note: This is the actual image creation date, not the date when you downloaded the image.


`docker image ls -a`{{execute}}

This lists all the images on the system including those we call "intermediate images", these are images that were not directly downloaded to the system, rather, they came built in into another image. We will see more of those later. 
Probably there arent any such images on the system just yet, so the the command above will most likely return the same images as the original `docker image ls`.


 <b>To get image information </b>
 
`docker inspect nginx:1.15`{{execute}}

This will display metadata info. GREP can come in quite handy here if you want to extract specific information, for example creation date. 
`docker inspect nginx:1.15 | grep "Created"`{{execute}} 

Or alternatively you can use

`docker image inspect nginx:1.15 --format "{{.Created}}"`{{execute}}
 