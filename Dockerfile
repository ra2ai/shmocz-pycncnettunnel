# Based on https://github.com/shmocz/pyra2yr/blob/05a20df628eff3cb28d9530e80addcca57a2cb0c/docker/tunnel.Dockerfile

FROM alpine:latest

RUN apk add --update --no-cache python3 py3-pip
RUN pip3 install --break-system-packages --no-cache --upgrade pip setuptools
COPY . /pycncnettunnel
RUN pip3 install --break-system-packages ./pycncnettunnel
RUN adduser -D user
USER user

CMD ["pycncnettunnel"]
