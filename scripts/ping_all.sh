for i in {61..80}; do
    gcloud compute ssh worker$i --command 'cd practicoPruebas2; tail -n 1 status.txt' &
    echo "Done worker$i"
done