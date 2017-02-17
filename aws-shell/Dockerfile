# alias aws='docker run -v "$(ls -d ~/.aws):/root/.aws:ro" -it brycetho/stevedore:aws-shell aws-shell'

FROM python:alpine
RUN pip install aws-shell
CMD aws-shell
