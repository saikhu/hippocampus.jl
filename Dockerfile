FROM julia:bullseye

LABEL version="1.0"
LABEL location="Busan" type="Julia Hippocampus" Author="Asim Usman" email="asimsaikhu@gmail.com"
ENV TARGET_DIR /workspace
# COPY ./ $TARGET_DIR

WORKDIR $TARGET_DIR

RUN apt-get update; apt-get install -yq curl; apt-get install -yq git; apt-get install vim

RUN git clone https://github.com/saikhu/hippocampus.jl.git

RUN cd ./hippocampus.jl/

VOLUME [ "/data" ]

CMD [ "/bin/bash" ]
