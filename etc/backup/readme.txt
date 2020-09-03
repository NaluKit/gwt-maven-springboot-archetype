



### Profiles

There's a special profile defined in the POM file of server modules:
`env-dev`, which is used only when developping. It configures the Jetty and Tomcat
plugins and removes the dependency on the client module (declared in the `env-prod`
profile, active by default.)

To activate the `env-dev` profile you can provide the `-Denv=dev` system property, or
use `-Penv-dev`.
