# alias aws-shell='docker run --rm -v "$(ls -d ~/.aws):/root/.aws" -it brycetho/stevedore:aws-shell aws-shell'

FROM python:alpine
RUN pip install aws-shell
CMD aws-shell
