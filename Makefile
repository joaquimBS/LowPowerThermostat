PIO=pio

all:
	$(PIO) run
	
upload:
	$(PIO) run --target upload

clean:
	rm -f firmware.map
	$(PIO) run --target clean
	
monitor:
	$(PIO) device monitor
