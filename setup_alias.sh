#!/bin/bash

for i in ./*; do
  if [ -d "$i" ];
    then
      echo "alias $(basename "$i")='docker pull brycetho/stevedore:$(basename "$i"); docker run -it --rm brycetho/stevedore:$(basename "$i")'" >> .bash_profile;
  fi;
done
