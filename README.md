# Arduino build environment with esp8266 preinstalled

This provides a build environment for esp8266 arduino projects that can be used by CI.

# Usage

You can use the arduino CLI within the container like `arduino --verify path/to/project.ino`

# Build

To build the container run `docker build -t arduino-esp8266-ci .`
You can start the container with `docker run -it arduino-esp8266-ci`
