FROM ubuntu

RUN apt-get update -y \
    && apt-get -y install ruby \
	ruby-dev \
	make \
	g++ \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN gem install --no-ri --no-rdoc selenium-webdriver

RUN groupadd -r android && useradd -r -g android android

COPY ruby-selenium-test/ /opt/ruby-selenium-test/

RUN chown -R android.android /opt/ruby-selenium-test/

USER android

WORKDIR /opt/ruby-selenium-test/
