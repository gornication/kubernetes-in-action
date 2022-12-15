FROM ubuntu:14.04

RUN apt-get update ; apt-get -y install --no-install-recommends fortune=9708 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
COPY fortuneloop.sh /bin/fortuneloop.sh

ENTRYPOINT ["/bin/fortuneloop.sh"]
CMD ["10"]

