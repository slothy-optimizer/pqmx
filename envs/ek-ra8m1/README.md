# Flashing and Running on EK-RA8M1 Board
### Environment Setup
Install the following Dependency:
- JLink [v8.56a](https://www.segger.com/downloads/jlink/) (v7.96h, v8.10, v8.56a have been confirmed to work)
### Flashing and Verifying on EK-RA8M1
Run in two separate terminals:
- `make flash-ek-ra8m1-<test-name>`
- `telnet 127.0.0.1 19021`