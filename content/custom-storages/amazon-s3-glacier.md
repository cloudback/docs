---
title: Amazon S3 Glacier
weight: 3
description: Backup GitHub repository using Amazon S3 Glacier
---

# Backup GitHub repository using Amazon S3 Glacier

## About Amazon S3 Glacier

Amazon S3 Glacier and S3 Glacier Deep Archive are secure, durable, and extremely low-cost Amazon S3 cloud storage classes for data archiving and long-term backup. They are designed to deliver 99.999999999% durability, and provide comprehensive security and compliance capabilities that can help meet even the most stringent regulatory requirements.

--------------------

## Set up Amazon S3 Glacier as a customer managed storage

* In the Cloudback Dashboard open the repository settings by clicking on the settings icon:

![Click-on-repository-settings](/static/bucket/0001-Dashboard.png)

* Click on the `+ New storage` button:

![Click-on-new-storage](/static/bucket/001-Add-new-storage.png)

* Type a storage name

* Select ‘Amazon S3 Glacier’ as a storage provider:

![storage-name](/static/glacier/01-storage-name.png)

* Create [Amazon S3 Glacier Storage Vault](https://docs.aws.amazon.com/amazonglacier/latest/dev/getting-started-create-vault.html):

![create-vault](/static/glacier/02-create-vault.png)

* Click on the your vault name and copy ARN:

![copy-arn](/static/glacier/03-copy-arn.png)

* Past ARN in to `Step 1` field on the Cloudback and copy policy from `Step 3`:

![copy-policy](/static/glacier/04-copy-policy.png)

* Click on `Permissions` in your Glacier vault and then click `Edit policy document`:

![edit-policy](/static/glacier/05-edit-policy.png)

* Paste policy document from `Step 3`:

![paste-policy](/static/glacier/06-paste-policy.png)

* Click `Save` button on the Cloudback site:

![save](/static/glacier/07-save.png)

* Save changes:

![save-changes](/static/glacier/08-save-cloudback.png)