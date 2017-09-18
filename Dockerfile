FROM ubuntu:16.04

# Install ruby & ruby-dev
RUN apt-get update && apt-get install -y \
    curl \
    ruby-dev \
    make \
    dh-autoreconf \
    nasm \
    git \
    apt-utils \
    ruby-compass \
    awscli
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash -
RUN apt-get update && apt-get install -y \
    nodejs \
    build-essential \
    chrpath \
    libssl-dev \
    libxft-dev \
    libfreetype6 \
    libfreetype6-dev \
    locales
    


# Install sass and compass gems
RUN locale-gen en_US.UTF-8
RUN export LC_ALL="en_US.UTF-8"
RUN export LANG="en_US.UTF-8"
RUN gem install sass --no-ri --no-rdoc
RUN gem install compass --no-ri --no-rdoc
RUN npm install -g grunt
RUN npm install -g grunt-cli 
RUN npm install -g karma-cli 
RUN npm install -g compass 
RUN npm install -g grunt-contrib-compass 
RUN npm install -g bower