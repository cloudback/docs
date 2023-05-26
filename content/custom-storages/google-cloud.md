---
title: Google Cloud Storage Bucket
weight: 4
description: Backup GitHub repository using Google Cloud Storage Bucket
keywords: github backup, cloudback, custom storage, customer-managed storage, google cloud, gcp, google cloud storage bucket
---

# Backup GitHub repository using Google Cloud Storage Bucket

## About Google Cloud Storage Bucket

Cloud Storage allows world-wide storage and retrieval of any amount of data at any time. You can use Cloud Storage for a range of scenarios including serving website content, storing data for archival and disaster recovery, or distributing large data objects to users via direct download.

----------------------------------------------------------

## Set up Google Cloud Storage Bucket

* In the Cloudback Dashboard open the repository settings by clicking on the settings icon:

![Click-on-repository-settings](/static/bucket/0001-Dashboard.png)

* Click on the `+ New storage` button:

![Click-on-new-storage](/static/bucket/001-Add-new-storage.png)

* Type a storage name

* Select `Google Cloud Storage Bucket`

* Create [Google Cloud Storage Bucket](https://cloud.google.com/storage/docs/creating-buckets)

* Click on the name of your bucket

* Select `Permissons` tab and click on `+ADD`:

![add-permissions](/static/google/01-add-permissions.png)

* Copy Service Account information from `Step 2`:

![copy-service-account](/static/google/02-copy.png)

* Paste it to the `New members` field

* Select `Storage Object Admin` as `Role` and click on `Save`:

![save-member](/static/google/03-save-new-member.png)

* In Step 3 type your bucket name and click on `Save`:

![type-name](/static/google/04-type-name.png)

* The new storage will be selected as a storage for this repository

* Click on the ‘Save changes’ button to apply the changes for the repository:

![save-changes](/static/google/05-save-changes.png)

