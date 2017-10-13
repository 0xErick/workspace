#基于 laradock/workspace
From laradock/workspace

#安装 node.js 8
RUN  apt-get update && apt-get install -y sudo
RUN  curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
RUN  sudo apt-get install -y nodejs
