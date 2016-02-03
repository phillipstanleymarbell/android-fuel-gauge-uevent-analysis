install:
	adb push gasGauge.sh /data/local/tmp

retrieve:
	adb pull /data/local/tmp/log Logs/`date "+%Y-%m-%d-%H-%M-%S"`.txt

