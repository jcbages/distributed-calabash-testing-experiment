# MUST BE RUN FROM THIS FOLDER

# clean old files
rm output.txt
rm status.txt

# iterate over folders given to worker
while read mutant; do
    ./run.sh $mutant >> output.txt # run the test for it
    echo "Finished $1" >> status.txt
done < workers/$1
echo "Finished all!" >> status.txt