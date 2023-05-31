---
title: Amazon S3 Bucket via Access Key
weight: 2
description: Backup GitHub repository using Amazon S3 Bucket Access Key
keywords: github backup, cloudback, custom storage, customer-managed storage, amazon s3 bucket, amazon s3 bucket access key
---

# Backup GitHub repository using Amazon S3 Bucket Access Key

## About Amazon S3 Bucket

Amazon Simple Storage Service (Amazon S3) is an object storage service that offers industry-leading scalability, data availability, security, and performance. This means customers of all sizes and industries can use it to store and protect any amount of data for a range of use cases, such as data lakes, websites, mobile applications, backup and restore, archive, enterprise applications, IoT devices, and big data analytics. 

## Required permissions

- **s3:PutObject** - required, for backup archive upload to Amazon S3 bucket
- **s3:GetObject** - optional, for backup restore and instant download from Amazon S3 bucket
- **s3:DeleteObject** - optional, for retention policy, automatic removal of outdated backups from Amazon S3 bucket
- **s3:GetBucketLocation** - optional, required to automatically determine the `Service Endpoint URL`
- **s3:PutObjectRetention** - optional, required for [S3 Object Lock](/features/s3-object-lock) `x-amz-object-lock-mode`
- **s3:PutObjectLegalHold** - optional, required for [S3 Object Lock](/features/s3-object-lock) `x-amz-object-lock-legal-hold`

## Set up Amazon S3 Bucket Access Key as a customer managed storage

* In the Cloudback Dashboard open the repository settings by clicking on the settings icon:

![Click-on-repository-settings](/static/bucket/0001-Dashboard.png)

* Click on the `+ New storage` button:

![Click-on-new-storage](/static/bucket/001-Add-new-storage.png)

* Type a storage name:

![name](/static/amazon-access-key/01-storage-name.png)

* Select ‘Amazon S3 Bucket Access Key’ as a storage provider

* Create an [Amazon S3 Bucket](https://docs.aws.amazon.com/AmazonS3/latest/userguide/creating-bucket.html) 

* To find Bucket ARN, click on the name of your bucket in the S3 console:

![click-name-bucket](/static/amazon-access-key/02-click-name.png)

* Click on `Properties` copy ARN and paste it in Step 1 on the Cloudback site:

![copy-arn](/static/amazon-access-key/03-arn.png)

* Create an AWS access key:

![create-key](/static/amazon-access-key/04-create-access-key.png)

![key](/static/amazon-access-key/05-copy.png)

* Type it's id and secret to Step 2 and click on `Save` button:

![save](/static/amazon-access-key/06-save.png)

* Save changes:

![save-changes](/static/amazon-access-key/07-save-changes.png)

![final](/static/amazon-access-key/08-final.png)