FROM python:3.4.5-alpine

ENV SPHINX_VER=1.4.5

RUN apk add --no-cache make && \
    pip install sphinx==${SPHINX_VER}

ENTRYPOINT ["sphinx-build"]
