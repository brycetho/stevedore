# py () { docker run --rm -v `pwd`:/py -e FILE=$1 -it brycetho/stevedore:py ; }

FROM python:2.7-slim
WORKDIR /py
COPY ./entrypoint.sh /
CMD ["/entrypoint.sh"]
