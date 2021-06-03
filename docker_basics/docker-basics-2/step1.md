In the previous lession we talked about how to use and run containers using a public (nginx) image, but we did not really cover how to manage or create images.

<h3>Let's get started</h3>

We already mentioned an image is a blueprint for the container, with a programming analogy, you can think of it as a class for the instance itself.
An image is an essential component of Docker. They provide the neccesary ingredients to run containers.
For the purpose of this lesson lets just settle for the fact that images consist of layers. You can see the layers being pulled when you do a docker pull image name. So lets just do that.

`docker pull nginx:1.15`{{execute}}
