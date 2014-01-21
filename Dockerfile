FROM henteko/railsdocker
MAINTAINER henteko<henteko07@gmail.com>

RUN apt-get install -y git
RUN apt-get install -y libmysqld-dev libpq-dev libsqlite3-dev 
RUN apt-get install -y nodejs libv8-dev
WORKDIR /
RUN git clone https://github.com/henteko/connect.git
WORKDIR /connect
RUN bundle install
RUN bundle exec rake db:migrate
RUN bundle exec rake db:seed_fu

ADD run.sh /connect/run.sh
CMD ["/bin/bash", "/connect/run.sh"]
