---
title: Microsoft Azure Blob Container
weight: 1
bookCollapseSection: true
---

# Backup GitHub repository using Microsoft Azure Blob Container

One of the ways to [backup GitHub repository](https://docs.cloudback.it/how-to/how-to-backup-github-repository/) using custom storage is to use your own Azure Container. Azure Blob Storage is Microsoft's object storage solution for the cloud. Blob storage is optimized for storing massive amounts of unstructured data, therefore it can be used as a storage for GitHub repository backups created by Cloudback.

This page describes how to set up your own Azure Blob Container as a custom storage for Cloudback backups of your GitHub repositories. 
To be able to use your Azure Blob Container as custom storage, you need to have an existing Azure storage or create a new one. Also, you should create a new shared access signature for that storage.

 - [How to create a new Microsoft Azure Blob Container](https://docs.cloudback.it/custom-storages/microsoft-azure-blob-container/create-microsoft-azure-blob-container/)
 - [How to create a new shared access signature](https://docs.cloudback.it/custom-storages/microsoft-azure-blob-container/create-shared-access-signature/)

## About Microsoft Azure Blob Containers

Azure Blob storage is Microsoft's object storage solution for the cloud that is optimized for storing massive amounts of unstructured data. Unstructured data is data that doesn't adhere to a particular data model or definition, such as text or binary data. Azure Storage is a Microsoft-managed service that provides highly available, secure, durable, and scalable cloud storage.


## Set up Microsoft Azure Blob Containers as a custom storage

 - In the Cloudback Dashboard open the repository settings by clicking on the settings icon:

<p align="center">
  <img src="https://raw.githubusercontent.com/cloudback/docs/master/static/azure/cloudback-1-open-settings.png" alt="open cloudback repository settings" title="open cloudback repository settings" class="screenshot">
</p>

 - Click on the `+ New storage` button:
 
<p align="center">
  <img src="https://raw.githubusercontent.com/cloudback/docs/master/static/azure/cloudback-2-new-storage.png" alt="add new storage" title="add new storage" class="screenshot">
</p>

 - Type a storage name
 - Select 'Microsoft Azure Blob Container' as a storage provider
 - Insert Blob SAS URL and click on the `Save` button:

<p align="center">
  <img src="https://raw.githubusercontent.com/cloudback/docs/master/static/azure/cloudback-3-new-storage-details.png" alt="new storage details" title="new storage details" class="screenshot">
</p>

 - The new storage will automatically be selected as a storage for this repository
 - Click on the 'Save changes' button to apply the changes for the repository:

<p align="center">
  <img src="https://raw.githubusercontent.com/cloudback/docs/master/static/azure/cloudback-4-new-storage-added.png" alt="new storage added" title="new storage added" class="screenshot">
</p>

 - After the changes are saved you should be able to see that the new storage is selected as a default storage for this repository:

<p align="center">
  <img src="https://raw.githubusercontent.com/cloudback/docs/master/static/azure/cloudback-5-new-storage-added-2.png" alt="new storage added" title="new storage added" class="screenshot">
</p>

 - When the backup is created you should be able to see it in the Azure Blob Container page:

<p align="center">
  <img src="https://raw.githubusercontent.com/cloudback/docs/master/static/azure/azure-6-container-backup-uploaded.png" alt="backup uploaded" title="backup uploaded" class="screenshot">
</p>

