FROM ubuntu:16.04
RUN apt-get update -y \
  && apt-get install -y apt-transport-https \ 
  && echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-xenial-prod/ xenial main" > azure.list \
  && cp ./azure.list /etc/apt/sources.list.d/ \
  && apt-key adv --keyserver packages.microsoft.com --recv-keys B02C46DF417A0893 \
  && apt-get update -y \
  && apt-get install -y --allow-unauthenticated azcopy