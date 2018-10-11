FROM ubuntu:18.04

RUN apt-get update && apt-get -y install \
 wget \
 git \
 tar \
 xz-utils \
 && apt-get clean && rm -r /var/lib/apt/lists
 
ENV ARDUINO_VERSION=arduino-1.8.7

RUN wget https://downloads.arduino.cc/$ARDUINO_VERSION-linux64.tar.xz && \
    tar -xf $ARDUINO_VERSION-linux64.tar.xz && \
    rm $ARDUINO_VERSION-linux64.tar.xz && \
    $ARDUINO_VERSION/install.sh && \
    $ARDUINO_VERSION/arduino --pref "boardsmanager.additional.urls=http://arduino.esp8266.com/stable/package_esp8266com_index.json" --save-prefs && \
    $ARDUINO_VERSION/arduino --install-boards esp8266:esp8266 --save-prefs

ENV PATH "$PATH:/$ARDUINO_VERSION"
    
ENTRYPOINT /bin/bash