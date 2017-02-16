#!/bin/bash
# Check every dir for an "alias" at the top of each Dockerfile
for i in ./*; do
  if [ -d "$i" ];
    then
      DALIAS=`head -n 1 $(basename "$i")/Dockerfile | awk -F'# ' '{print $2}'`;
      if [ "$DALIAS" ];
        then
          echo $DALIAS  >> .bash_profile;
      fi;
  fi;
done
