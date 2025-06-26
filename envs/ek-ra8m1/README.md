# Flashing and Running on EK-RA8M1 Board
### Environment Setup
Install the following Dependency:
- JLink [v7.96h](https://www.segger.com/downloads/jlink/) (some versions are incompatible)
### Flashing and Verifying on EK-RA8M1
Run in two separate terminals:
- `make flash-ek-ra8m1-<test-name>`
- `telnet 127.0.0.1 19021`