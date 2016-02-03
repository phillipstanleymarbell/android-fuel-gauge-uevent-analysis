# android-gas-gauge-uevent-analysis
Basic tools to grab battery event file data and to analyze collected traces of such grabs.

*This tool is just a proof-of-concept. See the list of limitations below.*

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

*Limitations*
-	It samples at 1Hz. This has the advantage that it does not induce much system activity.
-	Sampling at 1Hz will however not catch transients, and will be too coarse-grained to be useful in general. You can always decrease the sleep time in gasGauge.sh
-	The analysis tools presently only look at the instantaneous current samples, and not at the battery state-of-charge

