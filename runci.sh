#!/bin/bash

docker run -it  --net host -v /root/java-mysql-demo:/app  --rm 168.168.71.207/u14java:oraclejdk8 bash
