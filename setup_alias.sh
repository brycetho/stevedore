#!/bin/bash

for i in ./*; do
  if [ -d "$i" ];
    then
      echo "alias $(basename "$i")='docker pull brycetho/wharfie:$(basename "$i"); docker run -it --rm brycetho/wharfie:$(basename "$i")'" >> .bash_profile;
  fi;
done
