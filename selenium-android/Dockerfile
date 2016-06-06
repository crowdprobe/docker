FROM ubuntu

RUN apt-get update -y \
    && apt-get -y install chromium-chromedriver \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN groupadd -r chromedriver \
      && useradd -r -g chromedriver chromedriver

USER chromedriver

EXPOSE 9515

CMD /usr/lib/chromium-browser/chromedriver
