# Start from this docker image
FROM node:16.18 as builder

# Inside Container
# make a new folder inside container
WORKDIR /frontend-react-js

# Outside container -> Inside container
# first period  . - /backend-flask (outside container)
# second period . - /backend-flask (inside container)
COPY . .

# Inside container
# install the JS libraries used for the app when building the image
RUN npm install

# Runtime
FROM node:16.18-alpine3.17

# Inside Container
# make a new folder inside container
WORKDIR /frontend-react-js

# Copy the frontend react js files
COPY . .

# Copy the node modules
COPY --from=builder /frontend-react-js/node_modules .

# Make port accessible outside the container
EXPOSE ${PORT}

# command to run when launching the container
ENTRYPOINT ["/frontend-react-js/docker-entrypoint.sh"]
