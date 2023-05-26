---
title: Restore to GitHub
weight: 6
description: Restore GitHub backups with Cloudback's simple process
keywords: github backup, cloudback, restore to github, restore, github, process
---

# Restore to GitHub

Cloudback allows you to restore any backup to a new GitHub repository. This is a manual process, accessible from the repository card in the Cloudback Dashboard.

<img src="/static/features/restore-this-backup.png" alt="Restore" width="500"/>

## Prerequisites

The restore process requires read and write access to your GitHub data, but the [Cloudback](https://github.com/apps/cloudback) app has read-only access, following the principle of least privilege. We have released an additional application [Cloudback Restore](https://github.com/apps/cloudback-restore) with read and write access to your data. This application should be installed for a short period of time while the restore is running. Once the restore is complete, you should uninstall the application.

When you click on the `Restore this backup` button, Cloudback will prompt you to install the 'Restore' application:

![Restore Application](/static/features/install-restore-app.png)

## Restore to a new repository

In the `Restore` dialog you will be prompted to enter a new repository name and a target account name (owner). After that you will be asked to install the [Cloudback Restore](https://github.com/apps/cloudback-restore) GitHub application, if it is not installed yet. Once installation is done Cloudback creates an empty repository and initiates a restore process that runs in the background. The status is displayed in the repository card:

<p align="center">
  <img src="/static/features/restore.png" data-alt="/static/features/restore.gif"
       alt="Restore to repository" onclick="swapGif(this)" style="cursor: pointer;"/>
</p>

Once restore is finished please follow the link `Open restored repository` to open GitHub and verify the resulting repository:

<img src="/static/features/open-restored.png" alt="Open restored" width="500"/>

## Learn more

- [Customer Managed Storages](/features/customer-storages/)
- [What is inside of a backup?](/features/metadata/)
- [Password-Protected Archives](/features/archive/)
