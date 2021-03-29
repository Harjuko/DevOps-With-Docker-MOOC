#!/bin/bash

git clone https://github.com/Harjuko/Devops-MOOC-React.git
cd Devops-MOOC-React
docker build -t harjuko/kolmekaks:latest .   
docker login
docker push harjuko/kolmekaks:latest