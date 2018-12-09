import os
import sys

all_env_vars = [
    "export ANDROID_HOME=/home/jcbages/android-sdk;"
    "export PATH=$PATH:/home/jcbages/android-sdk/tools;"
    "export PATH=$PATH:/home/jcbages/android-sdk/platform-tools;"
    "export PATH=$PATH:/home/jcbages/android-sdk/build-tools"
]
env = ''.join(all_env_vars)
chdir = 'cd practicoPruebas2'
letters = 'abcdefghijklmnopqrstuvwxyz'

a = 0
b = 1
for i in range(0, 93):
    suffix = letters[a] + letters[b]
    run = 'python worker.py worker-%s' % suffix
    command = '%s;%s;%s' % (env, chdir, run)
    b = (b+1)%len(letters)
    if b == 0: a = (a+1)%len(letters)

    full_command = "gcloud compute ssh worker%d --command '%s' &" % (i, command)
    #print full_command
    os.system(full_command)
    print 'Done worker %d' % i