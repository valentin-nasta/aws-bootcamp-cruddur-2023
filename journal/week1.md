# Week 1 — App Containerization

## Required Homework/Tasks

- [x] Explored the backend-flask and frontend-react-js source code
- [x] Wrote the docker files for each app
- [x] Wrote a bash script [run-docker-containers.sh](../run-docker-containers.sh) to build the images locally and run them
- [x] I checked that they run by running `docker ps` and opening the links 
for [backend](http://127.0.0.1:4567/api/activities/home) and [frontend](http://127.0.0.1:3000)
- [x] Added docker VSCode extension `ms-azuretools.vscode-docker`
- [x] Created a docker-compose file
- [x] Mounted directories so we can make changes while we code

## Homework Challenges
- [x] Run the dockerfile CMD as an external script
Followed best practices from the [dockerfile best practices page](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/) and used the entrypoint
- [x] Push and tag an image to DockerHub (they have a free tier)
```bash
docker image push valentinnasta/backend-flask:1.0.0
docker image push valentinnasta/frontend-react-js:1.0.0
```
Link on dockerhub for the [backend-flask docker image](https://hub.docker.com/r/valentinnasta/backend-flask).
Link on dockerhub for the [frontend-react-js docker image](https://hub.docker.com/r/valentinnasta/frontend-react-js).
- [x] Use multi-stage building for a Dockerfile build
Followed instructions from this [multi-stage page](https://docs.docker.com/build/building/multi-stage/)
and this [stackoverflow post](https://stackoverflow.com/questions/48543834/how-do-i-reduce-a-python-docker-image-size-using-a-multi-stage-build) to get the venv trick.
I reduced the size of the docker images from
```text
valentinnasta/backend-flask       1.0.0     42280694047e   13 minutes ago   129MB
valentinnasta/frontend-react-js   1.0.0     e5fd63758ff9   12 minutes ago   1.19GB
``` 
to
```text
valentinnasta/backend-flask       1.0.1     cf6e6e270767   About a minute ago   71.8MB
valentinnasta/frontend-react-js   1.0.1     6772550e3c0c   30 seconds ago      353MB
```
- [ ] Implement a healthcheck in the V3 Docker compose file
- [ ] Research best practices of Dockerfiles and attempt to implement it in your Dockerfile
- [ ] Learn how to install Docker on your local machine and get the same containers running outside of Git pod / Code spaces
- [ ] Launch an EC2 instance that has docker installed, and pull a container to demonstrate you can run your own docker processes.
