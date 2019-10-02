# S3 sync

  aws s3 sync . s3://old.diglib.org --delete --exclude=.git/\* --exclude=.git\* --exclude=README.md
