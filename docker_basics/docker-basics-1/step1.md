One of the hottest IT topics in the 2000s were VMWare and virtualization. 
Recently that's been replaced by Docker and contrainer orchestraction. 
You can think of containers as small virtual machines that contain the dependencies for your application without the devs having to worry where and on what hardware the will the app be deployed.

The very basic concept of docker consits of two things: <b>Images</b> and <b>containers</b>.
If you come from an OOP dev background, you can think of images as classes and containers as the instances.
If not, you can think of image as the recipe for Pastel de Nata (pictured below) and the container the acutal dish.
<br/>
![](assets/pastel.jpg)


As a starter, lets check if docker is installed.
`docker version`{{execute}}

The command above should confirm docker is installed as well as tell us which version we are running.



Now that we have verified docker is installed, lets run our first container:
`docker run nginx`{{execute}}


<h3>What did that do?</h3>

`run` will attempt to create and start a container using the image specificed (nginx in our case). If the image does
not exist locally, docker will attempt to download the image from the <b>docker registry</b> as long as it's available. - the default registry is <b>DockerHub</b>.

`nginx` is a very compact webserver application, and since it's available on <b>DockerHub</b>, docker will download it and create a running container based on the `nginx` image. Since we did not specify explictly that it should run in the background, nginx will run in the foreground and await inputs from the console(terminal). Press CTRL+C
Run the command below, or press `CTRL + C` to exit from this container.
`top`{{execute interrupt}}



<h3>Now what??</h3>

Click on continue to find out!
