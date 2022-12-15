gwt-maven-springboot-archetype
==============================

This project contains a Maven archetype for modular GWT projects using Spring Boot. The repo is based on the implementation of Thomas Broyer's [gwt-maven-archetypes](https://github.com/tbroyer/gwt-maven-archetypes).

If you are looking for the original archetype creator or would prefer another backend/implementation, please visit:  [gwt-maven-archetypes](https://github.com/tbroyer/gwt-maven-archetypes).

How to use
----------

### Generate a project

    mvn archetype:generate \
       -DarchetypeGroupId=com.github.nalukit.archetype \
       -DarchetypeVersion=LATEST \
       -DarchetypeArtifactId=<artifactId>

where the available `<artifactIds>` is:

* `modular-springboot-webapp`

This should use the latest release from the Central Repository.
Alternatively, and/or if you want to hack on / contribute to the archetypes,
you can clone and install the project locally:

    git clone https://github.com/NaluKit/gwt-maven-springboot-archetype
    cd gwt-maven-springboot-archetype && mvn clean install

You'll then use the `mvn archetype:generate` command from above, except for the
`-DarchetypeVersion` argument which you'll replace with `HEAD-SNAPSHOT`.


### Start the development mode

Change directory to your generated project and issue the following commands:

1. In one terminal window: `mvn gwt:codeserver -pl *-client -am`
2. In another terminal window: `mvn spring-boot:run -pl *-server -am`

Note that the `-pl` and `-am` are not strictly necessary, they just tell Maven not to
build the client module when you're dealing with the server one, and vice versa.

In case you will debug the server code and create a running configuration in your preferred IDE, make sure, to start the code server (wait until the url wuth9876 at the end appears) before the Spring Boot Service.

Compatibility
-------------

To use variable interpolation in parameters during `mvn archetype:generate`,
you need at least version 2.2 of the maven-archetype-plugin. Archetypes use
`${module.toLowerCase()}` as the default value for the `module-short-name`
parameter, so if you don't use version 2.2 or above of the
maven-archetype-plugin, make sure you provide a value and do not use the
default one for that parameter. You can also make sure you use version 2.2 of
the plugin by using `mvn
org.apache.maven.plugins:maven-archetype-plugin:2.2:generate` instead of `mvn
archetype:generate`. It should be noted that variable interpolation also does
not work in M2Eclipse's wizard, despite using recent versions of Maven thus
(probably) a recent-enough version of the maven-archetype-plugin.
