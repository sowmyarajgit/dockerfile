From ubuntu:20.04
LABEL owner="sowmyaraj@435"
LABEL version="1.0"
ARG VERSION='1.2.9'
RUN  apt update
RUN apt install -y nginx jq unzip curl wget
COPY index.html /var/www/html/index.html
COPY style.css /var/www/html/style.css
COPY scorekeeper.js /var/www/html/scorekeeper.js
ADD  error.html /var/www/html/error.html
ADD https://releases.hashicorp.com/terraform/${VERSION}/terraform_${VERSION}_linux_amd64.zip /usr/local/bin/terraform.zip
RUN cd /usr/local/bin/ && unzip terraform.zip && rm -f *.zip

