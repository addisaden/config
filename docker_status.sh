#!/bin/sh

for SERVER in $(docker ps -q)
do
  docker inspect $SERVER | egrep '\"Name\":\s+\".+\"' | sed -r 's/^\s*\"Name\":\s+\"\/(.+)\",/\1/'
done
