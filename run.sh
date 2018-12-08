# erase old folders
echo " [x] Removing old folders just in case"
rm -rf ../results/$1
rm -rf logs
rm -rf screenshots
rm report.html

# create folders again
echo " [x] Creating new folders"
mkdir logs
chmod 777 logs
mkdir screenshots
chmod 777 logs

# run calabash test with given apk
echo " [x] Running calabash"
SCREENSHOT_PATH=screenshots/ \
calabash-android run ../mutants/$1/mileage.apk
#calabash-android run ../mutants/$1/mileage.apk --format html --out report.html

# move results to folder
echo " [x] Moving results"
mkdir ../results
mkdir ../results/$1

mv report.html ../results/$1/
mv logs ../results/$1/
mv screenshots ../results/$1/
