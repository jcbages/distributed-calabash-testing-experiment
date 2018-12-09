cd ../results
git checkout -b $1
git add .
git commit -m "results from $1"
git push -f origin $1
