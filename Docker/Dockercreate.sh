#!/bin/bash

docker build -t es_sshd .
docker run -d -P --name node_1 es_sshd
docker port node_1 22 > port.conf