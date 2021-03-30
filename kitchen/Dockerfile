FROM 18f/terraform

RUN apt update && \
    apt install -y \
        rbenv  

WORKDIR /src
ADD Gemfile . 
RUN gem install bundler && \
    bundle install

COPY kitchen.bash /bin/kitchen.bash
RUN chmod 755 /bin/kitchen.bash

ENTRYPOINT ["/bin/kitchen.bash"]
