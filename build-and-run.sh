#!/bin/bash

sudo docker build -t magnetostatic-example .
sudo docker create -ti --name dummy magnetostatic-example /app/build/slexe
sudo docker start -ai dummy
sudo docker cp dummy:/app/build/b.pos ./b.pos
sudo docker rm -fv dummy
