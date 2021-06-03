In the previous lession we talked about how to use and run containers using a public (nginx) image, but we did not really cover how to manage or create images.

<h3>Let's get started</h3>

We already mentioned an image is a blueprint for the container, with a programming analogy, you can think of it as a class for the instance itself.
An image is an essential component of Docker. They provide the neccesary ingredients to run containers.
For the purpose of this lesson lets just settle for the fact that images consist of layers. You can see the layers being pulled when you do a `docker pull <image-name>`. So lets just do that.

`docker pull nginx:1.15`{{execute}}


As a matter of fact, you have already used docker pull before. When you do `docker run <image-name>`, and the image is not present locally on your system, docker will automatically attempt to download it from the docker hub. The only new thing here is the `1.15` tag. When you do not specify a tag, docker will automatically download the image with the tag "lastest", meaning the latest version of the image will be downloaded.

Now, we are not going to cover the layered file system in depth but just to give you an idea "where" those layers are, let's run the following command: `docker image pull nginx:1.15`{{execute}}

The layers with 0 byte in size are called "no operation layers", the ones with actual size are the OP layers. This is just a side info,
we are not going to deal with layers in this course.