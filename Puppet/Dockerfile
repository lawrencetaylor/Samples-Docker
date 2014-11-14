FROM ubuntu:14.10

RUN apt-get -y update
RUN apt-get -y install rubygems-integration
RUN apt-get -y install ruby-dev

RUN echo "gem: --no-ri --no-rdoc" > ~/.gemrc
RUN gem install puppet librarian-puppet
