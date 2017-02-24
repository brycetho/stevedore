#!/bin/bash

useradd -ms /bin/bash $VUSER
mv ~/.vimrc /home/$VUSER/.vimrc
chown $VUSER:$VUSER /home/$VUSER/.vimrc
su - $VUSER -c "vim $FILE"
