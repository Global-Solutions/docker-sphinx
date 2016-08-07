FROM python:3.4.5-alpine

ENV SPHINX_VER=1.4.5 \
    SPHINX_THEMES="sphinxjp.themes.sphinxjp==0.3.1"

RUN apk add --no-cache make && \
    pip install sphinx==${SPHINX_VER} ${SPHINX_THEMES}

ENTRYPOINT ["sphinx-build"]
