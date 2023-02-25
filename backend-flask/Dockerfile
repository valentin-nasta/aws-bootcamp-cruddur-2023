# Start from this docker image
FROM python:3.10-slim-buster as builder

LABEL version="1.0.2"

# Create the virtual environment.
RUN python3 -m venv /venv
ENV PATH=/venv/bin:$PATH

# Outside container -> Inside container
# this contains the libraries to install to run the app
COPY requirements.txt requirements.txt

# Inside container
# install the python libraries used for the app when building the image
RUN pip3 install -r requirements.txt

# Runtime
FROM python:3.10-alpine3.17

# Set enviroment variable inside container
ENV FLASK_ENV=development

# Inside Container
# make a new folder inside container
WORKDIR /backend-flask

# Copy the virtual environment from the first stage.
COPY --from=builder /venv /venv
ENV PATH=/venv/bin:$PATH

# Outside container -> Inside container
# first period  . - /backend-flask (outside container)
# second period . - /backend-flask (inside container)
COPY . .

# Make port accessible outside the container
EXPOSE ${PORT}

# command to run when launching the container
ENTRYPOINT ["/backend-flask/docker-entrypoint.sh"]
