for i in {0..0}; do
    gcloud compute ssh worker$i --command 'cd ~/android-sdk/tools; ./emulator -avd testavd23 -skin 720x1280 -dpi-device 294 -memory 2000 -no-window -no-audio &' &
    echo "Done worker$i"
done