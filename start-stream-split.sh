#!/bin/bash
sudo docker kill stream-split
sudo docker rm -f stream-split
echo Inter-Docker user: $USER
sudo docker run -v $HOME/apps/stream-split/hostfiles/:/hostfiles -p 4444:4444/udp -p 3005:3005/tcp --name="stream-split" --network="split" --ip="10.0.10.2" --privileged -i -t -d pmw1/split-rtp
