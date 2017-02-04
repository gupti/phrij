#!/bin/bash

scp -i "idiots.pem" -c  aes256-ctr -r * ubuntu@ec2-52-14-56-155.us-east-2.compute.amazonaws.com:~/phrij

