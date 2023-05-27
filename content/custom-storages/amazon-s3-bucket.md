---
title: Amazon S3 Bucket via Access Point For GitHub Repository Backup
linkTitle: Amazon S3 Bucket via Access Point
weight: 2
description: Backup GitHub repository using Amazon S3 Bucket
keywords: github backup, cloudback, custom storage, customer-managed storage, amazon s3 bucket, amazon s3 bucket access point
---

# Backup GitHub repository using Amazon S3 Bucket

## About Amazon S3 Bucket

Amazon Simple Storage Service (Amazon S3) is an object storage service that offers industry-leading scalability, data availability, security, and performance. This means customers of all sizes and industries can use it to store and protect any amount of data for a range of use cases, such as data lakes, websites, mobile applications, backup and restore, archive, enterprise applications, IoT devices, and big data analytics. 

## Requires permissions

- **s3:PutObject** - required, for backup archive upload to Amazon S3 bucket
- **s3:GetObject** - optional, for backup restore and instant download from Amazon S3 bucket
- **s3:DeleteObject** - optional, for retention policy, automatic removal of outdated backups from Amazon S3 bucket
- **s3:GetBucketLocation** - optional, required to automatically determine the `Service Endpoint URL`

## Set up Amazon S3 Bucket as a customer managed storage

* In the Cloudback Dashboard open the repository settings by clicking on the settings icon:

![Click-on-repository-settings](/static/bucket/0001-Dashboard.png)

* Click on the `+ New storage` button:

![Click-on-new-storage](/static/bucket/001-Add-new-storage.png)

* Type a storage name

* Select ‘Amazon S3 Bucket’ as a storage provider

* Sign in to [AWS Management Console](https://console.aws.amazon.com/s3/) and click on the `Create bucket`:

![AS3-create-bucket](/static/bucket/1-create-bucket.png)

* Click on the name of your Amazon S3 Bucket:

![Click-bucket-name](/static/bucket/4-click-on-the-name.png)

* Click on the `Properties`:

![Click-properties](/static/bucket/5-click-properties.png)

* Copy ARN:

![Copy-ARN](/static/bucket/6-copy-arn.png)

* Insert ARN on the Cloudback site to the Step 1. In Step 2 you will receive generated bucket policy document:

![ARN-step-1](/static/bucket/7-past-step1.png)

* Open `Permissions` on Amazon S3 to find `Bucket policy` and click `Edit`:

![Permissions](/static/bucket/9-Choose-permissions.png)
![Bucket-Policy](/static/bucket/10-Edit-bucket-policy.png)

* Put in opened field generated bucket policy document and click on `Save changes`:

![Policy-doc](/static/bucket/11-Past-policy-from-step2.png)

* Click on the `Access points`:

![Click-on-access](/static/bucket/13-Choose-access-points.png)

* Type Access point name

* Copy Access point ARN and place it in Step 3:

![Access-point-ARN](/static/bucket/15-copy-app.png)
![Cloudback-step3](/static/bucket/16-ctrlv-to-step3.png)

* Copy access point policy from Step 4 and place it in AS3 Policy field: 

![Copy-policy](/static/bucket/17-copy-appd.png)
![Past-policy](/static/bucket/18-ctrlv-appd.png)

* Click on `Create access point`

* Click on `Save` on Cloudback:

![Save](/static/bucket/19-Save.png)

* The new storage will be selected as a storage for this repository

* Click on the ‘Save changes’ button to apply the changes for the repository:

![Save-changes](/static/bucket/20-Save-changes.png)

![Storage-indication](/static/bucket/21-storage-badge.png)

* When the backup is created you should be able to see it in the Amazon S3 Bucket page:

![Backup](/static/bucket/22-last-mod.png)
