# Arduino build environment with esp8266 preinstalled

This provides a build environment for esp8266 arduino projects that can be used by CI.

# Usage

You can use the arduino CLI within the container like `arduino --board esp8266:esp8266:generic --verify path/to/project.ino`

A `.gitlab-ci.yml` may look like that
```
image: thaker/arduino-esp8266-ci:1.8.7

build:
  stage: build
  script: 
    - arduino --board esp8266:esp8266:generic:CpuFrequency=80,FlashFreq=40,FlashMode=dio,UploadSpeed=115200,FlashSize=512K64,ResetMethod=ck,Debug=Disabled,DebugLevel=None____ --verify path/to/project.ino
```

# Build

To build the container run `docker build -t arduino-esp8266-ci .`
You can start the container with `docker run -it arduino-esp8266-ci`
