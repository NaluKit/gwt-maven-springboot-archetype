# gwt-maven-springboot-archetype

This project contains a Maven archetype for modular GWT projects using Spring Boot. The repo is based on the
implementation of Thomas Broyer's [gwt-maven-archetypes](https://github.com/tbroyer/gwt-maven-archetypes).

If you are looking for the original archetype creator or would prefer another backend/implementation, please visit:
[gwt-maven-archetypes](https://github.com/tbroyer/gwt-maven-archetypes).

## How to use

### Generate a project

```shell
mvn archetype:generate -DarchetypeGroupId=com.github.nalukit.archetype -DarchetypeVersion=LATEST -DarchetypeArtifactId=<artifactId>
```

where the available `<artifactIds>` is:

* `clean-modular-springboot-webapp`
* `modular-springboot-webapp`

This should use the latest release from the Central Repository.

> 📝 Maven 2.2 or later is required.

#### clean-modular-springboot-webapp

Generates a clean Spring Boot multi Maven module project without any example code. If you need a clean approach, this is
the best way to start.

The generated project will use the following version:

* Java 17
* GWT 2.11.0
* Spring Boot 3.2.5

#### modular-springboot-webapp

Generates a Spring Boot multi Maven module project with any example code. The example is similar to the one from the GWT
project.

The generated project will use the following version:

* Java 17
* GWT 2.11.0
* Spring Boot 3.2.5

### Start the development mode

Change directory to your generated project and issue the following commands:

1. In one terminal window: `mvn gwt:codeserver -pl *-client -am`
1. In another terminal window: `mvn spring-boot:run -pl *-server -am` 

> 📝 The `-pl` and `-am` are not strictly necessary, they just tell Maven not to build the client module when you're
dealing with the server one, and vice versa.

Once both are server are running, enter http://localhost:8080 in a browser window.

> 📝 Both servers are running when the code server outputs `The code server is ready at http://127.0.0.1:9876/`
and the Spring Boot server outputs `Started Application in xxx seconds`.

## Build a release

After you have generated your project from the above steps, you can create a release build and test it works.

Change directory to your generated project and issue the following commands:

1. `mvn clean package`
1. `cd *-server/target`
1. `java -jar myapp.war`

> 📝 Replace `myapp.war` with the name of your war file.

Open http://localhost:8080 in a browser window to test your release build.

## Contributing

If you want to hack on / contribute to the archetypes, you can:

```shell
git clone https://github.com/NaluKit/gwt-maven-springboot-archetype
cd gwt-maven-springboot-archetype
```
Make your changes, and run:

```shell
mvn clean verify
```

This will generate sample apps that can be found in both the `clean-modular-springboot-webapp` and
`modular-springboot-webapp` directories, in the `target/test-classes/projects/basic-webapp/project/basic-webapp`
directory.

You can also install your modified version of the project locally:

```shell
mvn clean install
```

Then use the `mvn archetype:generate` command from above, except for the `-DarchetypeVersion` argument which you'll
replace with `HEAD-SNAPSHOT`.

## To get in touch with the developer
Please visit use us at [Nalu Gitter room](https://gitter.im/Nalukit42/Lobby).
