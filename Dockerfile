FROM amd64/python:3.7.2-alpine

LABEL maintainers="dirtycajunrice,circa10a,tkdeviant"

COPY / /app

WORKDIR /app

RUN apk add --no-cache tzdata && \
    pip install --no-cache-dir .

ENTRYPOINT ["ouroboros"]