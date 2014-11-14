FROM lawrencetaylor/docker_nodejs

ADD Puppetfile /

RUN librarian-puppet install
RUN puppet apply --modulepath=/modules -e "class {'nodesample' : } "

EXPOSE 5000
