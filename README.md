### Hexlet tests and linter status:
[![Actions Status](https://github.com/nikitazh12/devops-for-developers-project-74/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/nikitazh12/devops-for-developers-project-74/actions)

[![push](https://github.com/nikitazh12/devops-for-developers-project-74/actions/workflows/push.yml/badge.svg)](https://github.com/nikitazh12/devops-for-developers-project-74/actions/workflows/push.yml)

[Ready image](https://hub.docker.com/r/zholnik/devops-for-developers-project-74) on Docker Hub

---

Docker is a programme that allows the operating system to run processes in an isolated environment based on specially created images. An image is an independent file system, a container is a running process in an isolated environment. Thanks to the kernel capabilities, the container sees its own list of processes, network, file system and so on. Why all this? Docker is a universal way to deliver an application, because everything you already need is inside the image. The process of building a programme from source can look like this:

- Install dependencies under the operating system
- Get the source code (download the archive or clone the repository)
- Start compiling or building the project

This process can be non-trivial and not always fast or not doable at all. Docker allows you to simplify all of these steps to a single command.

Docker Compose allows you to develop a project locally using Docker. Docker Compose can manage a set of containers, each of which is a service of the project: database, proxy server and so on. It allows you to describe dependencies between services. For example, the dependency of an application on a database. The configuration of Docker Compose is described in the file docker-compose.yml, lying in the root of the project.

## Description
In this project, students package a [js-fastify-blog](https://github.com/hexlet-components/js-fastify-blog) application in a Docker image. The application already uses the [12 factors methodology](https://12factor.net/), this minimises the differences between development and production environments.

Docker Compose is used to set up the development environment, run tests and CI. Upon successful CI execution, an image of the application is built and published to hub.docker.com. This makes setting up and running the application a matter of minutes, without instructions.


```console
  # Run application development
  make start

  # Run build application (production)
  make build

  # Run tests (on Postgres)
  make ci 

  # Push on Docker Hub
  make push
```