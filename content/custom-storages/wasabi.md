---
title: Wasabi
weight: 9
---

# Backup GitHub repository using Wasabi



## About Wasabi

Wasabi Storage Service is an object storage service with full S3 API support.

## Set up Wasabi as a custom storage

* In the Cloudback Dashboard open the repository settings by clicking on the settings icon:

![Click-on-repository-settings](/static/bucket/0001-Dashboard.png)

* Click on the `+ New storage` button:

![Click-on-new-storage](/static/bucket/001-Add-new-storage.png)

* Type a storage name:

![name](/static/wasabi/01-storage-name.png)

* Select ‘Wasabi S3 Bucket: Access Key’ as a storage provider

* Create an [Wasabi Bucket](https://wasabi.com/wp-content/themes/wasabi/docs/User_Guide/topics/Creating_a_Bucket.htm) 

* On Cloudback site, select the same Bucket Region as was selected during bucket creation on Wasabi

* To find Bucket ARN, open bucket settings on Wassabi Console and navigate to "Policies" tab:

![click-name-bucket](/static/wasabi/02-click-name.png)

* Copy ARN and paste it in Step 1 on the Cloudback site

* Create an [Wasabi access key](https://wasabi.com/wp-content/themes/wasabi/docs/User_Guide/index.html#t=topics%2FCreating_a_New_Access_Key.htm) 

* Type it's id and secret to Step 2 and click on `Test` button:

![save](/static/wasabi/06-save.png)

* Save your new storage by clicking "Save" button

* Save your repository settings
