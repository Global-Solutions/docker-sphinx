FROM python:3.4.5-alpine

RUN pip install sphinx

ENTRYPOINT ["sphinx-build"]
