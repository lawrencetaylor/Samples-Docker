FROM lawrencetaylor/docker_puppet

RUN apt-get -y -q install wget git-core
ADD Puppetfile /

RUN librarian-puppet install
RUN puppet apply --modulepath=/modules -e "class { 'nodejs' : }"
RUN export PATH=$PATH:/usr/local/node/node-default/bin
RUN echo "export PATH=$PATH:/usr/local/node/node-default/bin" >> ~/.bashrc 
RUN ln -s /usr/local/node/node-default/bin/node /usr/bin/node
CMD ["/bin/bash"]
