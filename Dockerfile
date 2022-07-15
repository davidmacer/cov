FROM ubuntu:focal

#WORKDIR /workdir
COPY . .
ENV TIMEZONE="America/Mexico City"
RUN mkdir /etc/localtime
RUN ln -snf /usr/share/zoneinfo/$TIMEZONE /etc/localtime && echo $TIMEZONE > /etc/timezone
RUN apt-get update && apt-get install --yes \
    tzdata \
    build-essential \
    texlive-full
CMD ["make"]