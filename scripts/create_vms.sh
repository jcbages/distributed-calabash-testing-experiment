for i in {0..92}; do
    gcloud compute disks create worker$i --source-snapshot worker &
    echo "Done worker$i"
done