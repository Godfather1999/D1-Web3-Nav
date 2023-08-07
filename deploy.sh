#!/bin/bash
echo "Web3 build"
hugo -D
git add .
git commit -m "auto deploy:Web3"
git push
echo "Web3 deploy success"
