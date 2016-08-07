FROM python:3.4.5-alpine

RUN apk add --no-cache make && \
    pip install sphinx

ENTRYPOINT ["sphinx-build"]
