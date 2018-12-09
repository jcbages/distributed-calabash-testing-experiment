cd ../results
git add .
git commit -m "results from $1"
git branch -d $1
git checkout -b $1
git push -f origin $1
