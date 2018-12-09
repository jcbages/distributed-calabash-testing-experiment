for i in {0..92}; do
    gcloud compute instances stop worker$i &
    echo "Done worker$i"
done