FROM node:16.17.0-alpine3.15

ARG mnemonic=""
RUN mnemonic="${mnemonic}"
ENV mnemonic ${mnemonic}

RUN npm install -g ganache-cli

CMD ["sh","-c","ganache-cli -h 0.0.0.0 --mnemonic \"${mnemonic}\" --db /db"]