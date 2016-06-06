FROM ubuntu

ENV DEBIAN_FRONTEND noninteractive
ENV BM_VERSION browsermob-proxy-2.1.1

RUN apt-get update \
    && apt-get -y install zip openjdk-9-jre-headless \
    && apt-get clean && rm -rf /var/lib/apt/lists/*


ADD https://github.com/lightbody/browsermob-proxy/releases/download/${BM_VERSION}/${BM_VERSION}-bin.zip /opt/browsermob-proxy.zip

RUN groupadd -r browsermob \
      && useradd -r -g browsermob browsermob

RUN cd /opt \
    && unzip -q browsermob-proxy.zip \
    && rm -f browsermob-proxy.zip \
    && chown -R browsermob.browsermob /opt/${BM_VERSION}

USER browsermob

EXPOSE 8080

WORKDIR /opt/${BM_VERSION}

CMD /opt/${BM_VERSION}/bin/browsermob-proxy
