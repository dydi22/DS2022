#!/usr/bin/env python3

import requests
import boto3

s3 = boto3.client('s3')

link = input("Paste the link to your file here  ")
url = requests.get(link)

object_name = input("What should your file be named?  ")

def upload_link_to_bucket(url, bucket_name, object_name):

 expires_in = 604800
	
 s3.put_object(Bucket=bucket_name, Key=object_name, Body=url.content)

 return s3.generate_presigned_url(
  'get_object',
  Params={'Bucket': bucket_name, 'Key': object_name},
  ExpiresIn=expires_in
 )

new_url = upload_link_to_bucket(url, 'ds2022-atv7xh', object_name)
print(new_url)
