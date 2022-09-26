# Hello Selenium Docker

A minimal example of Selenium Java running headless Chrome inside a Docker container.

## To Run

```
$ make build test
```

This will build a Docker image of the project and tag it as `hello-selenium`, then run the tests with Maven.

## To Explore

```
$ make build bash
```

This will build the image and tag it, then start an interactive session at a shell so that you can poke around and debug things.

