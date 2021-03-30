FROM ubuntu:focal

RUN apt update && \
    apt install -y \
        curl \
        gnupg2 \
        software-properties-common 
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add - 
RUN apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
RUN apt install terraform


ENTRYPOINT ["terraform"]
# CMD = ["info"]