FROM ruby:2.7.2-buster

RUN apt update && \
    apt install -y \
        curl \
        gnupg2 \
        software-properties-common 

RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add - 
RUN apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
RUN apt-get update 
RUN apt-get install -y terraform

WORKDIR /src 

ENTRYPOINT ["terraform"]
