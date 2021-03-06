FROM openjdk:17-slim-buster

RUN apt update && \
    apt install -y curl && \
    curl -fsSL https://deb.nodesource.com/setup_15.x | bash - && \
    apt-get install -y nodejs gcc g++ make && \
    echo n | npm i -g @ionic/cli @angular/cli && \
    apt-get clean autoclean && \
    apt-get autoremove --yes && \
    rm -rf /var/lib/{apt,dpkg,cache,log}/ && \

CMD ["sh"]

ENTRYPOINT [""]
