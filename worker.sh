# MUST BE RUN FROM THIS FOLDER

# clean old files
rm output.txt
rm status.txt

# iterate over folders given to worker
while read mutant; do
    ./run.sh $mutant # run the test for it
    echo " [x] Finished $mutant" >> status.txt
done < workers/$1

# upload results
echo " [x] Uploading all results"
./upload.sh $1

echo " [x] Finished all!" >> status.txt
