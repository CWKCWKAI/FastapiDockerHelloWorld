# base image
FROM python:3.7-slim

# set env variables
ENV ABC="CBA"
ENV TESTCLIENT="THISISTEST CLIENT"
ENV TESTSECRET="THISISTEST SECRET"

# get code from repo
RUN apt-get update
RUN apt-get install -y git
RUN git clone https://github.com/CWKCWKAI/FastapiDockerHelloWorld.git

WORKDIR /FastapiDockerHelloWorld

# install python packages
RUN pip install -r requirements.txt

EXPOSE 80 443

# run app
CMD ["uvicorn", "main:app", "--port", "80"]
