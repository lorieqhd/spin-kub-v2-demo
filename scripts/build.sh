#!/bin/bash
mkdir -p /spin/test
docker login -u lorieqhd -p Wf1456199678
docker run lorieqhd/spin-demo:latest
docker exec -it spin-demo /bin/bash -c 'echo --do-GitClone-MvnOrNpmBuild-tarZ-inside-- > /root/test.txt'
docker build -t lorieqhd/spin-demo:20200224123400
docker push lorieqhd/spin-demo:20200224123400
