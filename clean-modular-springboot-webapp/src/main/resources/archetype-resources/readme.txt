#set( $dollar = '$')
${module} Application

This project was generated using the `gwt-maven-springboot-archetype`!

======================================================================

To run the examples:

* run in one terminal window:

  - mvn clean compile

  - mvn gwt:codeserver -pl *-client -am

Wait until codeserver is startet (it is started, in case you see the codeserver url). after a `mvn clean` is this necessary because the `launcherdir` has to be created inside the Spring Boot server before launching the Sprin Boot server.

* in another terminal window:

  - mvn spring-boot:run -pl *-server -am

To start the application, call:

http://localhost:8080/index.html
