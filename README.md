# android-gas-gauge-uevent-analysis
Basic tools to grab battery event file data and to analyze collected traces of such grabs.

*This tool is just a proof-of-concept. See the list of limitations below.*

## To install:

(1) Grab the repository:

	git clone git@github.com:gemusehaken/android-gas-gauge-uevent-analysis.git

(2) Running 'make install' will copy the script to the Android device currently connected to your workstation via USB.  (Be sure to first enable USB debugging on the Android device.)

	make install

(3) Run ‘adb shell’ to login to the Android device. Change directory to '/data/local/tmp' (this is where 'make install' copied the logger script to)  and launch the script in the background, saving it to the file 'log':

	adb shell

	shell@angler:/ $ cd /data/local/tmp

	shell@angler:/data/local/tmp $ gasGauge.sh > log &

(4) Disconnect the USB debug cable and use the phone or run your tests as usual.

(5) To retrieve the log:

	make retrieve

This will retrieve the file '/data/local/tmp/log' from the Android device, and will store the retrieved file in a time-named file within 'Logs/' of the repository root. 

(6) To analyze the log, run it through the Mathematica notebook in the Mathematica/ subdirectory of the repository.

## Limitations
-	It samples at 1Hz. This has the advantage that it does not induce much system activity.

-	Sampling at 1Hz will however not catch transients, and will be too coarse-grained to be useful in general. You can always rewrite gasGauge.sh to achieve more- or less-frequent sampling.

-	The analysis tools presently only look at the instantaneous current and voltage samples, and not at the battery state-of-charge.
