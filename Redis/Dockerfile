FROM lawrencetaylor/docker_puppet

ADD Puppetfile /

RUN librarian-puppet install
RUN puppet apply --modulepath=/modules -e "class { 'redis' : }"
