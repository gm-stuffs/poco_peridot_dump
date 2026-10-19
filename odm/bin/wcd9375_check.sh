
result_all="1"
success_result="312d: 00"

echo 0x312C > /d/regmap/wcd937x-slave.a01170223-wcd937x_csr/address
echo 0x80 > /d/regmap/wcd937x-slave.a01170223-wcd937x_csr/data
echo 0x31D3 > /d/regmap/wcd937x-slave.a01170223-wcd937x_csr/address
echo 0xC2 > /d/regmap/wcd937x-slave.a01170223-wcd937x_csr/data
result_1=$(cat /d/regmap/wcd*/registers  |grep 12d)

echo "$result_1"
if [ "$success_result" != "$result_1" ]; then
    result_all="0"
fi

echo 0x31D3 > /d/regmap/wcd937x-slave.a01170223-wcd937x_csr/address
echo 0x82 > /d/regmap/wcd937x-slave.a01170223-wcd937x_csr/data
result_1=$(cat /d/regmap/wcd*/registers  |grep 12d)

echo "$result_1"
if [ "$success_result" != "$result_1" ]; then
    result_all="0"
fi


echo 0x31D3 > /d/regmap/wcd937x-slave.a01170223-wcd937x_csr/address
echo 0x42 > /d/regmap/wcd937x-slave.a01170223-wcd937x_csr/data
result_1=$(cat /d/regmap/wcd*/registers  |grep 12d)

echo "$result_1"
if [ "$success_result" != "$result_1" ]; then
    result_all="0"
fi


echo 0x31D3 > /d/regmap/wcd937x-slave.a01170223-wcd937x_csr/address
echo 0x02 > /d/regmap/wcd937x-slave.a01170223-wcd937x_csr/data
result_1=$(cat /d/regmap/wcd*/registers  |grep 12d)

echo "$result_1"
if [ "$success_result" != "$result_1" ]; then
    result_all="0"
fi


echo 0x312C > /d/regmap/wcd937x-slave.a01170223-wcd937x_csr/address
echo 0xC0 > /d/regmap/wcd937x-slave.a01170223-wcd937x_csr/data
echo 0x31D3 > /d/regmap/wcd937x-slave.a01170223-wcd937x_csr/address
echo 0xC2 > /d/regmap/wcd937x-slave.a01170223-wcd937x_csr/data
result_1=$(cat /d/regmap/wcd*/registers  |grep 12d)

echo "$result_1"
if [ "$success_result" != "$result_1" ]; then
    result_all="0"
fi


echo 0x31D3 > /d/regmap/wcd937x-slave.a01170223-wcd937x_csr/address
echo 0x82 > /d/regmap/wcd937x-slave.a01170223-wcd937x_csr/data
result_1=$(cat /d/regmap/wcd*/registers  |grep 12d)

echo "$result_1"
if [ "$success_result" != "$result_1" ]; then
    result_all="0"
fi


echo 0x31D3 > /d/regmap/wcd937x-slave.a01170223-wcd937x_csr/address
echo 0x42 > /d/regmap/wcd937x-slave.a01170223-wcd937x_csr/data
result_1=$(cat /d/regmap/wcd*/registers  |grep 12d)

echo "$result_1"
if [ "$success_result" != "$result_1" ]; then
    result_all="0"
fi


echo 0x31D3 > /d/regmap/wcd937x-slave.a01170223-wcd937x_csr/address
echo 0x02 > /d/regmap/wcd937x-slave.a01170223-wcd937x_csr/data
result_1=$(cat /d/regmap/wcd*/registers  |grep 12d)

echo "$result_1"
if [ "$success_result" != "$result_1" ]; then
    result_all="0"
fi

if [ "$result_all" = "1" ]; then
    echo "Test pass"
else
    echo "Test NG"
fi