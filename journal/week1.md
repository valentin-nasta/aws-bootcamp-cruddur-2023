# Week 1 — App Containerization

## Required Homework/Tasks

- [x] Explored the backend-flask and frontend-react-js source code
- [x] Wrote the docker files for each app
- [x] Wrote a bash script [run-docker-containers.sh](../run-docker-containers.sh) to build the images locally and run them
- [x] I checked that they run by running `docker ps` and opening the links 
for backend [backend](http://127.0.0.1:4567/api/activities/home) and [frontend](http://127.0.0.1:3000)
- [x] Added docker VSCode extension `ms-azuretools.vscode-docker`
- [x] Created a docker-compose file
- [x] Mounted directories so we can make changes while we code

## Homework Challenges
- [x] Run the dockerfile CMD as an external script
Followed best practices from the [dockerfile best practices page](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/) and used the entrypoint
- [ ] Push and tag a image to DockerHub (they have a free tier)
- [ ] Use multi-stage building for a Dockerfile build
- [ ] Implement a healthcheck in the V3 Docker compose file
- [ ] Research best practices of Dockerfiles and attempt to implement it in your Dockerfile
- [ ] Learn how to install Docker on your localmachine and get the same containers running outside of Gitpod / Codespaces
- [ ] Launch an EC2 instance that has docker installed, and pull a container to demonstrate you can run your own docker processes.
