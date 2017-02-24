#!/bin/bash
# Every directory is a tag name, build, tag, push
REPO=brycetho/stevedore
for i in ./*; do
  if [ -d "$i" ];
    then
      DDIR=$(basename "$i")
      cd $DDIR
      pwd
      docker build -f Dockerfile -t $DDIR . && \
      docker tag $DDIR $REPO:$DDIR && \
      docker push $REPO;
      cd ..
  fi;
done
