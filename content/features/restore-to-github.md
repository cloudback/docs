---
title: Restore To GitHub
weight: 3
---

# Restore To GitHub

Cloudback allows you to restore a particular backup into a GitHub repository. This is a manual operation accessible from the repository card in the Cloudback Dashboard.

<img src="/static/features/restore-this-backup.png" alt="Restore" width=500/>

## Prerequisites

Restore process requires read-write access to your GitHub data. Permissions are managed by [GitHub](https://docs.github.com/en/github/authenticating-to-github/keeping-your-account-and-data-secure/connecting-with-third-party-applications#types-of-application-access-and-data) applications. [Cloudback](https://github.com/apps/cloudback) GitHub application has read-only access only, according to the least privilege principle. We published an additional [Cloudback Restore](https://github.com/apps/cloudback-restore) GitHub application with read-write access to your data. This application should be installed for a short period of time, while restore is in progress. Once restore is done the application should be uninstalled.

When you click `Restore this backup` button Cloudback will ask you to install the Restore application:

![Restore Application](/static/features/install-restore-app.png)

## Restore to a new repository

If the [Cloudback Restore](https://github.com/apps/cloudback-restore) GitHub application is installed you will be asked to enter a new repository name. When you click `Restore` button, we immediately create an empty repository and initiate a restore process which runs in background. The status is displayed in the repository card:

<p align="center">
  <img src="/static/features/restore-to-repo.png" data-alt="/static/features/restore-to-repo.gif"
       alt="Restore to repository" onclick="swapGif(this)" style="cursor: pointer;"/>
</p>

Once restore is finished please follow a link `Open restored repository` to open GitHub and verify the resulting repository:

<img src="/static/features/open-restored.png" alt="Open restored" width=500/>

## Learn more

- [What is a backup storage?](/features/various-backup-storages)
- [What if a backup fails?]()