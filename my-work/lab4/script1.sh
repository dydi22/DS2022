#!/bin/bash

echo "What file do you want to upload?"
read FILE   

echo "What is the bucket name?"
read BUCKET   

EXPIRATION=604800

aws s3 cp "$FILE" "s3://$BUCKET/"

aws s3 presign "s3://$BUCKET/$(basename "$FILE")" --expires-in $EXPIRATION


