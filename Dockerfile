FROM ubuntu:14.04

RUN apt-get update ; apt-get -y install fortune=9708
COPY fortuneloop.sh /bin/fortuneloop.sh

ENTRYPOINT ["/bin/fortuneloop.sh"]
CMD ["10"]

