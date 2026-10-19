brightness=$1
on_off_time=$2


echo $1 > /sys/class/leds/led:torch_0/brightness
echo $1 > /sys/class/leds/led:torch_1/brightness

echo "=== set torch on: $1 ==="
if [ $2 == off ];
then
  echo 0 > /sys/class/leds/led:switch_2/brightness
elif [ $2 == on ];
then
  echo 1 > /sys/class/leds/led:switch_2/brightness
elif [ $2 > 0 ];
then
  echo 1 > /sys/class/leds/led:switch_2/brightness
  sleep $2
  echo 0 > /sys/class/leds/led:switch_2/brightness
else
  echo "invalid input Arg."
  echo "valid input: ./torch_test_n16t.sh current time/sate"
  echo "time/state : off       -- turn off LED
             on        -- turn on  LED
      	     digit > 0 -- time of on seconds"
fi
