# android-gas-gauge-uevent-analysis
Basic tools to grab battery event file data and to analyze collected traces of such grabs.

To install:

(1) grab the repository:

	https://github.com/gemusehaken/android-gas-gauge-uevent-analysis

(2) copy the script to the android device

	make install

(3) run ‘add shell’ and launch the script in the background
	adb shell
	shell@angler:/ $ cd /data/local/tmp
	shell@angler:/data/local/tmp $ gasGauge.sh > log &

(4) Disconnect the USB debug cable and use the phone or run your tests as usual

(5) To retrieve the log
	make retrieve

(6) To analyze the log, run it through the Mathematica notebook in the Mathematica/ subdirectory of the repository

