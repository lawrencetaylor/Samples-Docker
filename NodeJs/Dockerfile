FROM lawrencetaylor/docker_puppet

RUN apt-get -y -q install wget git-core
ADD Puppetfile /

RUN librarian-puppet install
RUN puppet apply --modulepath=/modules -e "class { 'nodejs' : }"

CMD ["/bin/bash"]
