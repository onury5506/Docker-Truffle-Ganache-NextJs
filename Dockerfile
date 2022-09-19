FROM node:16.17.0

RUN mkdir /python

WORKDIR /python

RUN wget https://www.python.org/ftp/python/3.10.4/Python-3.10.4.tgz

RUN tar zxvf Python-3.10.4.tgz

WORKDIR /python/Python-3.10.4

RUN ./configure

RUN make

RUN make install

WORKDIR /smart-contract

RUN npm install -g truffle

CMD ["truffle","deploy"]