#基于 laradock/workspace
From laradock/workspace

#安装 node.js 6
RUN  apt-get update && apt-get install -y sudo
RUN  curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
RUN  sudo apt-get install -y nodejs

#安装 laravel-echo-server
RUN  npm install -g laravel-echo-server
RUN pecl install -o -f redis \
    &&  rm -rf /tmp/pear \
    &&  echo "extension=redis.so" > /usr/local/etc/php/conf.d/redis.ini