---
weight: 10
bookCollapseSection: true
title: Supported Storages
---

# Supported Storages

## Cloudback default storage

By default, Cloudback uses its own storage to backup GitHub repositories. The storage is powered by Microsoft Azure Storage and available for all Cloudback users without any additional payments. 

## Your own storages

Cloudback provides you the ability to set up your own storage that will be used to save repository backups.

![supported-storages](/static/storages.svg)

There are several options available for Cloudback users:

 - Microsoft Azure Blob Storage
 - Microsoft OneDrive Personal
 - Microsoft OneDrive For Business
 - Amazon S3 Bucket
 - Amazon S3 Glacier
 - Google Cloud Storage Bucket
 - Alibaba Cloud Object Storage Service
 - OpenStack Swift Container via S3 API

Each of the options can be used as a custom storage for the repository backups. You can use any of your custom storage for each of your GitHub repositories. Please be aware that the user-defined storages are provided by third-party companies may require additional expenses which are not included in Cloudback's pricing.

## Setting up a custom storage

You can set up custom storage using the steps below. 

**Step 1:** Open repository settings

Open repository settings by clicking on the `Settings` button in the top right corner of your repository card

<p align="center">
  <img src="https://github.com/cloudback/docs/blob/master/static/custom_storage_screeshot1.png?raw=true" alt="img" class="screenshot">
</p>

**Step 2:** Open the 'New Storage' window

Click on the `+ New storage` button in the middle of the repository card settings

<p align="center">
  <img src="https://github.com/cloudback/docs/blob/master/static/custom_storage_screeshot2.png?raw=true" alt="img" class="screenshot">
</p>

**Step 3:** Fill in storage details

Type the name of the storage you want to create, select the storage provider, fill in other required details for the storage and click on the `Save` button.

<p align="center">
  <img src="https://github.com/cloudback/docs/blob/master/static/custom_storage_screeshot3.png?raw=true" alt="img" class="screenshot">
</p>

Read more about setting up the custom storages:

 - [Set up new storage using Microsoft Azure Blob Container](https://docs.cloudback.it/custom-storages/microsoft-azure-blob-container/)
 - [Set up new storage using Amazon S3 Bucket](https://docs.cloudback.it/custom-storages/amazon-s3-bucket/)
 - [Set up new storage using Amazon S3 Glacier](https://docs.cloudback.it/custom-storages/amazon-s3-glacier/)
 - [Set up new storage using Google Cloud Storage Bucket](https://docs.cloudback.it/custom-storages/google-cloud/)
 - [Set up new storage using Alibaba Cloud Object Storage Service](https://docs.cloudback.it/custom-storages/alibaba-cloud/)
