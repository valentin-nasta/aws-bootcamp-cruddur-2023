#!/usr/bin/env bash
docker build -t  valentinnasta/backend-flask:1.0.0 ./backend-flask
docker stop backend-flask
docker run -d --rm -p 4567:4567 -e FRONTEND_URL='*' -e BACKEND_URL='*' --name backend-flask backend-flask

docker build -t valentinnasta/frontend-react-js:1.0.0 ./frontend-react-js
docker stop frontend-react-js
docker run -d --rm -p 3000:3000 --name frontend-react-js frontend-react-js
