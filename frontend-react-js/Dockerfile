# Start from this docker image
FROM node:16.18

# Set enviroment variable inside container
ENV PORT=3000

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

# Make port accessible outside the container
EXPOSE ${PORT}

# command to run when launching the container
ENTRYPOINT ["/frontend-react-js/entrypoint.sh"]
