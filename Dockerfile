# base image
FROM python3.7-slim

# set env variables
ENV ABC="CBA"
ENV TESTCLIENT="THISISTEST CLIENT"
ENV TESTSECRET="THISISTEST SECRET"

# get code from repo
RUN git clone git@bitbucket.org:User/repo.git

# install python packages
RUN python -m pip install requirements.txt

# run app
RUN uvicorn main:app --port 80 --reload