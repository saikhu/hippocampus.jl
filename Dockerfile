FROM julia:bullseye

COPY ./ /workspace

WORKDIR /workspace

RUN apt-get update; apt-get install -yq curl


