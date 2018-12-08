echo " [x] Starting to processing $1"

# erase old folders
echo " [x] Removing old folders just in case"
rm -rf ../results/$1
rm -rf logs
rm -rf screenshots
rm report.html

# create folders again
echo " [x] Creating new folders"
mkdir logs
mkdir screenshots

# run calabash test with given apk
echo " [x] Running calabash"
SCREENSHOT_PATH=screenshots/ \
REPORT_PATH=logs \
calabash-android run ../mutants/$1/mileage.apk --format html --out report.html
#calabash-android run ../mutants/$1/mileage.apk

# move results to folder
echo " [x] Moving results"
mkdir ../results
mkdir ../results/$1

mv report.html ../results/$1/
mv logs ../results/$1/
mv screenshots ../results/$1/

echo " [x] Finish processing $1"
echo ""
echo ""
echo ""
echo "********************************************************************************"
echo "********************************************************************************"
echo ""
echo ""
echo ""
