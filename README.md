# R dockerized

This is a very simple guide on how to use R from Docker without having to install R.

## Prerequisites

You need to have Docker installed and working, check with the following command

```
docker --version
Docker version 27.2.0, build 3ab4256
```

## Using R CLI with docker

Using the very simple Docker file called Dockerfile.rcli , we will create the image that runs the CLI

```
docker build -f Dockerfile.rcli -t errecli .
```

Then R interactivelly using the local image

```
docker run -it errecli
```

You should get a prompt of the R interpreter

## Running a program

Now lets build a Docker image that runs an specific program file located in src/ folder

As always, first we must build the image, this time lets use the standard file "Dockerfile"

```
docker build -f Dockerfile.program -t erreprogram .
```

Now we execute the program using Docker

```
docker run erreprogram
```

Using this Dockerfile you will need to build the image anytime you do a change on the source code of your program.

## Working on a program using Docker volumes

Now lets mount a volume inside the docker so we dont have to build the image everytime

We will build yet another image

```
docker build -f Dockerfile.volume -t errevolume .
```

Now you can run the following command to execute the script, and make changes in the script, then execute it again without having to build the image everytime.

```
docker run -v $(pwd)/src:/src errevolume
```

