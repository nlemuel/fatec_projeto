# Use a imagem gitpod/workspace-mysql como base
FROM gitpod/workspace-mysql

# Mude para o usuário gitpod
USER gitpod 

# Instale o SDKMAN!
RUN curl -s "https://get.sdkman.io" | bash

# Instale o JDK 17 usando o SDKMAN!
RUN /bin/bash -c "source /home/gitpod/.sdkman/bin/sdkman-init.sh && sdk install java 17.0.9-oracle && sdk flush archives && sdk flush temp"
