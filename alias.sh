#!/bin/bash
# Check every dir for an "alias" at the top of each Dockerfile
echo -n '' > .bash_profile_alias.new
for i in `find . -type f -iname 'Dockerfile*'`: do
    DALIAS=`head -n 1 "$i" | awk -F'# ' '{print $2}'`;
      if [ "$DALIAS" ];
        then
          echo $DALIAS  >> .bash_profile_alias.new;
      fi;
done
# could check size and add/remove instead of just adding
mv .bash_profile_alias.new .bash_profile_alias
grep -q -F 'source .bash_profile_alias' || echo -e '\nsource .bash_profile_alias' >> .bash_profile
