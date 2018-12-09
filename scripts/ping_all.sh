for i in {0..92}; do
    gcloud compute ssh worker$i --command 'cd practicoPruebas2; tail -n 1 status.txt' &
    echo "Done worker$i"
done