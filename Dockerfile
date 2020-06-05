  
FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y wget python3-dev gcc && \
    wget https://bootstrap.pypa.io/get-pip.py && \
    python3 get-pip.py

ADD . /
WORKDIR /


ENTRYPOINT ["python3", "add.py"]
