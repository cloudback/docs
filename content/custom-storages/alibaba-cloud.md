---
title: Alibaba Cloud Object Storage Service
weight: 5
description: Securely backup GitHub repos with Alibaba Cloud Storage
keywords: github backup, alibaba, alibaba cloud, cloudback, custom storage, customer-managed storage
---

# Backup GitHub repository using Alibaba Cloud Object Storage Service

## About Alibaba Cloud Object Storage Service

Alibaba Cloud Object Storage Service (OSS) is an encrypted, secure, cost-effective, and easy-to-use object storage service that enables you to store, back up, and archive large amounts of data in the cloud, with a guaranteed durability of 99.9999999999%(12 9’s). RESTful APIs allow storage and access to OSS anywhere on the Internet. You can elastically scale the capacity and processing capability and choose from a variety of storage types to optimize the storage cost.

-------------------------------------------------

## Set up Alibaba Cloud Object Storage Service (OSS)

* In the Cloudback Dashboard open the repository settings by clicking on the settings icon:

![Click-on-repository-settings](/static/bucket/0001-Dashboard.png)

* Click on the `+ New storage` button:

![Click-on-new-storage](/static/bucket/001-Add-new-storage.png)

* Type a storage name

* Select ‘Alibaba Cloud Object Storage Service’ as a storage provider

* Create [Alibaba Cloud OSS Bucket](https://www.alibabacloud.com/help/doc-detail/31885.htm)

* On the Buckets page, click the name of your bucket to configure bucket policies:

![click-name](/static/ali/01-click-name.png)

* In the left-side navigation pane, click `Files`, than click `Authorize`:

![click-authorize](/static/ali/02-click-authorize.png)

* On the GUI tab, click Authorize:

![authorize](/static/ali/03-authorize.png)

* In the Authorize panel, configure the parameters

* Copy Cloudback RAM id from `Step 2`:

![set-ram-id](/static/ali/04-copy-ram.png)

* Paste to `Other accounts` field:

* In `Authorized Operation` click on `Any Operation`  click `OK`:

![any-operations](/static/ali/05-paste-ram.png)


* Type your [Bucket Domain Name](https://www.alibabacloud.com/help/doc-detail/31834.htm) to the Step 3 field on the `New Storage` dialog
    * Sample input: `your-bucket-name.oss-me-east-1.aliyuncs.com`
    
* Click on `Save` button:

![save-storage](/static/ali/06-save.png)


* The new storage will be selected as a storage for this repository

* Click on the ‘Save changes’ button to apply the changes for the repository:

![apply-changes](/static/ali/07-save-storage.png)

