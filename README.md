# Maven and SpringMVC basic web application template
This project is a basic SpringMVC web application template ready to 
run with just a welcome page deployed on Jetty web application server

## Getting Started
Before git-cloning this project you would need to have only one thing
to get you up and running - and that is the reason behind using this
technology - [Maven](https://maven.apache.org/).

### Prerequisites
To get Maven installed on whatever operating system, please read the following [instructions](https://www.baeldung.com/install-maven-on-windows-linux-mac)

### Installing

To clone this repository:
```bash
git clone https://github.com/pagidas/maven-springmvc-project.git
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
