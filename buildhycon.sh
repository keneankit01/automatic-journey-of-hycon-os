echo take some rest this script will handle rest
echo starting clonning 
git clone https://github.com/keneankit01/hycon_PL2.git -b ancient device/nokia/PL2
git clone https://github.com/keneankit01/hycon-common-sdm660.git device/nokia/sdm660-common
git clone https://github.com/keneankit01/hycon-DRG.git  -b ancient  device/nokia/DRG_sprout
git clone https://github.com/keneankit01/proprietary_vendor_nokia.git vendor/nokia
git clone https://github.com/keneankit01/vendor_nokia_DRG_sprout.git -b eleven vendor/nokia/DRG_sprout
git clone https://github.com/LineageOS/android_kernel_nokia_sdm660.git kernel/nokia/sdm660
git clone https://github.com/Zazaaw/ancient_device_tulip device/xiaomi/tulip -b 11-jos
git clone https://github.com/Zazaaw/vendor_xiaomi_tulip vendor/xiaomi/tulip
git clone https://github.com/Zazaaw/kernel_xiaomi_zazaaw kernel/xiaomi/tulip
echo clonning completed
echo starting build
. build/envsetup.sh
make clean
lunch ancient_PL2-userdebug
make bacon
mkdir githubpushable
cp out/target/product/PL2/AncientOS*.zip githubpushable
cp out/target/product/PL2/boot.img githubpushable/PL2-boot.img
. build/envsetup
lunch ancient_DRG_sprout-userdebug
make bacon
cp out/target/product/DRG_sprout/AncientOS*.zip githubpushable
cp out/target/product/DRG_sprout/boot.img githubpushable/DRG-boot.img
make clean
. build/envsetuo.sh
lunch ancient_tulip-userdebug
make bacon
cp out/target/product/tulip/AncientOS*.zip githubpushable
echo builds are succesfull you can upload them manually to github
echo see ya
