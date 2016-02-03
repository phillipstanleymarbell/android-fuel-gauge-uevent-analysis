install:
	/Volumes/doos/android-sdk-macosx/platform-tools/adb push gasGauge.sh /data/local/tmp

retrieve:
	/Volumes/doos/android-sdk-macosx/platform-tools/adb pull /data/local/tmp/log Logs/`date "+%Y-%m-%d-%H-%M-%S"`.txt

