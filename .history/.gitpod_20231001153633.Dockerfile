FROM mariadb:latest

RUN useradd -m gitpod

USER gitpod 

RUN curl -s "https://get.sdkman.io" | bash

RUN /bin/bash -c "source /home/gitpod/.sdkman/bin/sdkman-init.sh && sdk install java 17.0.9-oracle && sdk flush archives && sdk flush temp"

