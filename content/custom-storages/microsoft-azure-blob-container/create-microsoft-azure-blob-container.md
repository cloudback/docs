---
title: How to create a new Microsoft Azure Blob Container
weight: 2
description: Easily backup GitHub repositories with Azure
---

# Backup GitHub repository using Azure: How to create a new Microsoft Azure Blob Container

When creating [GitHub repository backup](https://docs.cloudback.it/features/automated-daily-backups/) using Cloudback you can set up your own Azure Storage where the backups will be saved. 
This article describes how to create a new Azure Blob Container for GitHub repository backups.

## About Microsoft Azure Blob Containers

Azure Blob storage is Microsoft's object storage solution for the cloud that is optimized for storing massive amounts of unstructured data. Unstructured data is data that doesn't adhere to a particular data model or definition, such as text or binary data. Azure Storage is a Microsoft-managed service that provides highly available, secure, durable, and scalable cloud storage.

## Create a new Microsoft Azure Blob Container

### Create a storage account

To be able to create a new Blob Container it is required to have a storage account. If you don't have a storage account you need to create it first.

 - Open Azure Portal [home page](https://portal.azure.com/#home)
 - Click on `Storage accounts` button
 - Follow the steps in the 'Create a storage account' wizard:
 
<p align="center">
  <img src="https://raw.githubusercontent.com/cloudback/docs/master/static/azure/azure-1-create-a-storage-account.png" alt="create a storage account" title="create a storage account" class="screenshot">
</p>

### Create a new container

After the storage account is created, follow the steps below to create a new container:

 - Open the storage account page
 - In the left menu select `Containers` option
 - Click on the `+ Container` button
 - Type a name of your container and set up Public access level
 - Click on the `Create` button

<p align="center">
  <img src="https://raw.githubusercontent.com/cloudback/docs/master/static/azure/azure-2-create-a-new-container.png" alt="create a storage account" title="create a storage account" class="screenshot">
</p>
