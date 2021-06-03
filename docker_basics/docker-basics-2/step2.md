Let's cover some of the basic commands you would often use when working with images.

To get a list of images already present on the system:


`docker images`{{execute}}
OR
`docker image ls`{{execute}}

A number of images might already come pre-installed on the system, don't be surprised.
You can also filter the results. For example:

`docker image --filter "before=nginx"`{{execute}}