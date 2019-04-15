# Docekrized Maven and SpringMVC basic web application template

This project is a basic SpringMVC web application template ready to run with just a welcome page deployed on Jetty web application server.

You can run it locally or if you prefer in a docker container.

## Getting Started (Local build)

Before git-cloning this project you would need to have only one thing to get you up and running - and that is the reason behind using this technology - [Maven](https://maven.apache.org/).

### Prerequisites

To get Maven installed on whatever operating system, please read the following [instructions](https://www.baeldung.com/install-maven-on-windows-linux-mac). This project works with JDK 1.8.0

### Installing

To clone this repository:

```bash
git clone https://github.com/elpaxoudis/maven-springmvc-project.git
```

On the root of the project, in your local machine, run the following command to compile the project:

```bash
mvn compile
```

This step is a called a ***phase*** in maven’s building steps and it is going to take a little while at first. It downloads all the dependencies (JARs) that the projects needs to run, specified in the `pom.xml` file.

Finally:

```bash
mvn jetty:run
```

Hopefully, [Jetty](https://www.eclipse.org/jetty/documentation/9.4.x/jetty-maven-plugin.html) is up and running by calling maven’s ***plugin***, supplied again in the `pom.xml` The server runs by default at port `8080`

To test the application running we would open a web browser and simply put

```http
http://localhost:8080/
```

The root context simply greets you with a welcome page.

## Getting Started (Container build)

[Docker](https://www.docker.com/) can have you up and running in just two commands. Literally, in just **two** commands.

Firstly, if you haven't done it already, you have to either clone or download this repository. The following git command will clone the repository.

```bash
git clone https://github.com/elpaxoudis/maven-springmvc-project.git
```


### Installing docker

If you are new to docker, I'd recommend to install [Docker CE](https://docs.docker.com/install/) (CE stands from Community Edition), since the community edition is preferred for individual developers and small teams.

Right from the Docker documentation:

>Docker Community Edition (CE) is ideal for individual developers and small teams looking to get started with Docker and experimenting with container-based apps.

Of course, if you already are familiar with Docker, you can skip this section.

Bellow are the links to learn how to install Docker CE for each platform.

| Platform   | System requirements |
| --------   | ------------------- |
| [Windows 10](https://docs.docker.com/docker-for-windows/install/) | Windows 10 64bit: Pro, Enterprise or Education (1607 Anniversary Update, Build 14393 or later).
| [Ubuntu](https://docs.docker.com/install/linux/docker-ce/ubuntu/) | Docker CE is supported on `x86_64` (or `amd64`), `armhf`, `arm64`, `s390x` (IBM Z), and `ppc64le` (IBM Power) architectures. Cosmic 18.10 / Bionic 18.04 (LTS) / Xenial 16.04 (LTS)
| [MacOS](https://docs.docker.com/docker-for-mac/install/)          | macOS Sierra 10.12 and newer macOS releases are supported. We recommend upgrading to the latest version of macOS.

Please be sure to check any other specific system requirements, all information is given in each link. Be sure to read the guides carefully, they are quite explanatory.

To verify that everything went well open a terminal in your specific platform and run the following docker command.

```bash
docker --version
```

### Docker build

After installing Docker we are ready to build our image. In the root directory of this project run the following docker command:

```bash
docker build --rm -t maven-springmvc-project:latest .
```

Having an internet connection is mandatory, because the container will download and install maven, as well as any missing library required for this project. Of course, you could use a different tag for the image by changing the `maven-springmvc-project`.

### Docker run

In order to run a container from the image we built on the previous step you have to run the following docker command:

```bash
docker run -it --rm --name maven-project maven-springmvc-project
```

You'll need to wait for a while in order for the jetty plug-in to be downloaded. When you see the following

```bash
[INFO] Started Jetty Server
```

the app has been served in

```http
http://localhost:8000/
```

In order to terminate the server you just use the `ctrl-c` key combination.