FROM lawrencetaylor/docker_nodejs

ADD Puppetfile /

RUN puppet-librarian install
RUN puppet apply --modulepath=/modules -e "class {'nodesample' : } "

EXPOSE 5000
