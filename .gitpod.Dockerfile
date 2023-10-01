FROM mariadb:latest

USER gitpod 

RUN /bin/bash -c ". /home/gitpod/.sdkman/bin/sdkman-init-sh \
        && sdk install java 17.0.9-oracle < /dev/null \
        && sdk flush archives \
        && sdk flush temp
"