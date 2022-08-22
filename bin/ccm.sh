#!/bin/bash

#local update handling
inotifywait -m /opt/dvm/config.centrunk.yml -e create -e modify |
    while read dir action file; do
        echo "The file '$file' appeared in directory '$dir' via '$action'"
        # do something with the file
        # use awscli to upload file to minio
    done

# 3.0 TODO, handle remote updates, compare hashes every so often