audio-factory-test -f enable_headset
/vendor/bin/agmplay /odm/etc/audio/stereo.wav -D 100 -d 100 -i CODEC_DMA-LPAIF_RXTX-RX-0
audio-factory-test -f disable_headset
