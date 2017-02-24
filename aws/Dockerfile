# alias aws='docker run --rm -v "$(ls -d ~/.aws):/root/.aws" -it brycetho/stevedore:aws aws'

FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y python-pip
RUN pip install --upgrade pip
RUN pip install --upgrade awscli boto3
WORKDIR /code
CMD aws
