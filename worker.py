# MUST BE RUN FROM THIS FOLDER
import os
import sys

# clean old files
os.system('rm output.txt')
os.system('rm status.txt')

# iterate over folders given to worker
worker_file = sys.argv[1]
with open('workers/%s' % worker_file) as worker:
    for mutant in worker:
        os.system('./run.sh %s >> output.txt 2>&1 # run the test for it' % mutant)
        os.system('echo " [x] Finished %s" >> status.txt' % mutant)

# upload results
os.system('echo " [x] Uploading all results"')
os.system('./upload.sh $1 >> output.txt 2>&1')

os.system('echo " [x] Finished all!" >> status.txt')
