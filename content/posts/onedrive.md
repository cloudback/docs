---
title: "We support new storage now: Microsoft OneDrive"
tags: ["News", "Release notes"]
date: 2021-06-14
categories: ["News", "Release notes"]
description: Store GitHub backups with Microsoft OneDrive and Cloudback
---

Cloudback provides an easy way to store GitHub repository backups in various storages. And today, we are delighted to announce the support of new storage - Microsoft OneDrive. 

We received a request to support this storage via email, but to make our work more transparent, we created a [related issue](https://github.com/cloudback/issue-tracker/issues/7) in our public issue tracker. The development process from the initial request to a production-ready solution took about a month, including two weeks of waiting for the verification from the Microsoft side. 

The team decided to support both [OneDrive Personal](https://www.microsoft.com/en-ww/microsoft-365/onedrive/online-cloud-storage) and [OneDrive for Business](https://www.microsoft.com/en-ww/microsoft-365/onedrive/onedrive-for-business). We recommend using OneDrive Personal just because it supports [AppFolder](https://docs.microsoft.com/en-us/onedrive/developer/rest-api/concepts/special-folders-appfolder). Cloudback uses an AppFolder to store backup archives without access to all files in the user OneDrive. Unfortunately, Microsoft does not support AppFolder for OneDrive for Business.

## Need another storage?

Contact us or create a feature request, and we will consider implementing your storage. Please check our [supported storages list](https://docs.cloudback.it/features/various-backup-storages/#supported-storages) first, just in case your storage provider is already supported.

Learn more: 
 - [Various backup storages](https://docs.cloudback.it/features/various-backup-storages/) 