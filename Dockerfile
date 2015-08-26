FROM ubuntu
MAINTAINER honeniq <honeniq@gmail.com>
RUN apt-get update
RUN apt-get install -y ruby ruby-build ruby-dev build-essential
RUN gem install -y itamae serverspec --no-rdoc --no-ri
RUN gem install -y fluentd

RUN apt-get install -y nodejs npm
RUN sudo update-alternatives --install /usr/bin/node node /usr/bin/nodejs 10

RUN npm install tty.js -g
