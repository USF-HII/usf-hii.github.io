FROM ubuntu:16.04
MAINTAINER Kingsquare <docker@kingsquare.nl>

RUN apt-get update \
  && apt-get install -y --no-install-recommends ruby-dev python-pygments build-essential zlib1g-dev libssl-dev nodejs \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/ \
  && gem install --no-ri --no-rdoc github-pages

VOLUME /app
WORKDIR /app
EXPOSE 4000

ENTRYPOINT ["jekyll", "serve", "--host=0.0.0.0", "--watch", "--drafts", "--baseurl", ""]
