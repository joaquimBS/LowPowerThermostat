
# Low Power Thermostat [![Build Status](https://travis-ci.org/joaquimBS/LowPowerThermostat.svg?branch=master)](https://travis-ci.org/joaquimBS/LowPowerThermostat)

Here are the code and schematics of a IoT enabled, low power Thermostat, based on a [Moteino](https://lowpowerlab.com/guide/moteino/) board. It has a build-in 868MHz radio to transmit information to a base station and, therefore, push data the cloud.

The thermostat itself works just as a switch to the heater control line; no AC supply is needed.

## Key features:
- Current temperature set point and ON/OFF modes are configurable through an Android app. :-)
- Low power (idle current of ~25uA). No AC supply needed. Can run for months with 3xAAA, LiPo, etc.
- OLED screen as a HID.
- 3 modes of operation:
	- Turn the heater ON for a period of time.
	- After a period of time, turn the heater ON for another period of time.
	- Temperature set point with ~~a configurable~~ 1ºC hysteresis. 
- IoT enabled through another Arduino based device connected to the Internet.

## Links:
- https://thingspeak.com/channels/400806/

## TODO
- Connect the Thermostat directly to the Internet, keeping a low power profile.
- Add an RTC in order to program the Thermostat based on week days, day time, etc.

## Changelog

### v1.1
- Switched from DHT22 temperature sensor to HTU21D.
- Aprox 100ms of sleep task time.
```
Program:   22370 bytes (68.3% Full)
(.text + .data + .bootloader)
Data:        929 bytes (45.4% Full)
(.data + .bss + .noinit)
```

### v1.0
- First stable version.
- Android app connection is working.
- Issue. 250ms delay after temperature sampling to avoid incoherent readings.
```
Program:   23292 bytes (71.1% Full)
(.text + .data + .bootloader)
Data:        896 bytes (43.8% Full)
(.data + .bss + .noinit)
```
