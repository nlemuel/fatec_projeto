FROM mariadb:latest

RUN useradd -m gitpod

USER gitpod 

# Instala o curl
RUN apt-get update && apt-get install -y curl

# Instala o SDKMan e o Java 17.0.9-oracle
RUN curl -s "https://get.sdkman.io" | bash && \
    /bin/bash -c "source /home/gitpod/.sdkman/bin/sdkman-init.sh && sdk install java 17.0.9-oracle && sdk flush archives && sdk flush temp"
