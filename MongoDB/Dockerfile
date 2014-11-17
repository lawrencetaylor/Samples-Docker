FROM lawrencetaylor/docker_puppet

ADD Puppetfile /
ADD init.pp /

RUN sudo apt-get -y install libaugeas-ruby
RUN librarian-puppet install
RUN sudo puppet apply --modulepath=/modules ./init.pp 
