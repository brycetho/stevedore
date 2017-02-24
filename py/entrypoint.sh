#!/bin/bash
[ -e requirements.pip ] && pip install -r requirements.pip
[ -e requirements.txt ] && pip install -r requirements.txt
bash -c "python $FILE"
