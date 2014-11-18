FROM ubuntu

# Get updates and install rubygems
RUN apt-get -y update
RUN apt-get -y install rubygems-integration
RUN apt-get -y install ruby-dev
RUN echo "gem: --no-ri --no-rdoc" > ~/.gemrc

RUN gem install puppet librarian-puppet

RUN apt-get -y -q install wget git-core

ADD PuppetFile /
ADD init.pp /



#Install puppet dependencies
RUN librarian-puppet install

#Run puppet apply
RUN puppet apply --modulepath=/modules ./init.pp

