echo take some rest this script will handle rest
echo starting clonning 
git clone https://github.com/Zazaaw/ancient_device_tulip device/xiaomi/tulip -b 11-jos
git clone https://github.com/Zazaaw/vendor_xiaomi_tulip vendor/xiaomi/tulip
git clone https://github.com/Zazaaw/kernel_xiaomi_zazaaw kernel/xiaomi/tulip
echo clonning completed
echo starting build
. build/envsetup.sh
make clean
lunch ancient_tulip-userdebug
make bacon
mkdir githubpushable
cp out/target/product/PL2/AncientOS*.zip githubpushable
. build/envsetup
lunch ancient_tulip-userdebug
make bacon
cp out/target/product/tulip/AncientOS*.zip githubpushable
echo builds are succesfull you can upload them manually to github
echo see ya
