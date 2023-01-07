#!/usr/bin/env bash

# check that there is no changes in current dir
test -z "$(git status --porcelain)" || exit 1

tag=$(git tag --points-at HEAD) 
docker build . -t "sgaunet/nginxplorerauth:${tag}"
rc=$?

if [ "$rc" != "0" ]
then
    echo "error during docker build"
    exit 1
fi

docker push "sgaunet/nginxplorerauth:${tag}"
