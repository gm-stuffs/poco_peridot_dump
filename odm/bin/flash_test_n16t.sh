brightness=$1

echo $1 > /sys/class/leds/led:flash_0/brightness
echo $1 > /sys/class/leds/led:flash_1/brightness

echo "=== set flash on: $1 ==="
echo 1 > /sys/class/leds/led:switch_2/brightness
sleep 1
echo 0 > /sys/class/leds/led:switch_2/brightness
