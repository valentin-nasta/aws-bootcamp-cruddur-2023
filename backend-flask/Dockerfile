# Start from this docker image
FROM python:3.10-slim-buster

# Set enviroment variable inside container
ENV FLASK_ENV=development

# Inside Container
# make a new folder inside container
WORKDIR /backend-flask

# Outside container -> Inside container
# this contains the libraries to install to run the app
COPY requirements.txt requirements.txt

# Inside container
# install the python libraries used for the app when building the image
RUN pip3 install -r requirements.txt

# Outside container -> Inside container
# first period  . - /backend-flask (outside container)
# second period . - /backend-flask (inside container)
COPY . .

# Make port accessible outside the container
EXPOSE ${PORT}

# command to run when launching the container
# python3 -m flask run --host=0.0.0.0 --port=4567
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0", "--port=4567"]
