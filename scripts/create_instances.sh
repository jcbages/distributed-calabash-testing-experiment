for i in {0..92}; do
    gcloud compute instances create worker$i --zone us-central1-b --disk name=worker$i,boot=yes &
    echo "Done worker$i"
done