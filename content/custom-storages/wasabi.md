---
title: Wasabi Customer Managed Storage
weight: 9
description: Backup GitHub repository using Wasabi
keywords: github backup, cloudback, custom storage, customer-managed storage, wasabi
---

# Backup GitHub repository using Wasabi

## About Wasabi

[Wasabi](https://wasabi.com/) is a public cloud object storage service that is 1/5th the price of Amazon S3 and faster than the competition with no fees for egress or API requests. Wasabi provides 11 x 9s of data durability, high system availability, and support for immutable storage buckets. Wasabi is fully compatible with the Amazon S3 API with support for hundreds of S3-compatible storage applications and has been certified for compliance with enterprise security and privacy standards.

## Set up Wasabi as a customer managed storage

* In the Cloudback Dashboard open the repository settings by clicking on the settings icon:

![Click-on-repository-settings](/static/bucket/0001-Dashboard.png)

* Click the `+ New storage` button, it will open the `New storage` dialog:

![Click-on-new-storage](/static/bucket/001-Add-new-storage.png)

* Enter a new storage name, and select `Wasabi S3 Bucket: Access Key` as the storage provider:

![name](/static/wasabi/01-storage-name.png)

* Go to the [Wasabi](https://wasabi.com) website and create a `Wasabi Bucket` by following the instruction [Creating a Bucket](https://docs.wasabi.com/docs/creating-a-bucket)

* Go back to the Cloudback website and provide a valid `Bucket Region` as was selected during bucket creation on `Wasabi`:

    * To find `Bucket ARN`, open `Bucket Settings` in the `Wasabi Console` and navigate to the `Policies` tab:
    * Copy and paste `Bucket ARN` into the `Step 1` section of the `New Storage` dialog on the Cloudback website

![click-name-bucket](/static/wasabi/02-click-name.png)

* Got to the `Wasabi` website and create a `Bucket Access Key` by following the instruction [Creating a New Access Key](https://wasabi.com/wp-content/themes/wasabi/docs/User_Guide/index.html#t=topics%2FCreating_a_New_Access_Key.htm) 

    * Go back to the `Cloudback` website, enter `Access Key Id` and `Access Key Secret` to the `Step 2` section of the `New Storage` dialog, and then click the `Test` button:

![save](/static/wasabi/06-save.png)

* Save your new storage by clicking the `Save` button

* Now, click the `Save Changes` button to apply changes to your repository

* Once the storage is created, you can use the [Bulk Operations](/features/bulk-operations/) menu to assign a newly created storage to a large number of repositories with one click
