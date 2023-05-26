---
title: What is Cloudback
weight: 2
description: Ultimate cloud backup solution for GitHub repositories. Protect your code and data with Cloudback.
keywords: cloudback, github backup, github repository backup, github backup as a service, github backup service, github backup solution, github backup tool, github backup tools, github backup software
---

# Introducing Cloudback

Cloudback - the ultimate [cloud backup](https://en.wikipedia.org/wiki/Remote_backup_service) solution for your [GitHub repositories](https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/creating-a-repository-on-github/about-repositories). With Cloudback, you have the flexibility to choose from a [variety of backup storage options](/features/customer-storages/). If you already have your own storage, we'll simply place your backup archives there. No need to worry about using our internal storage, called Cloudback. And, with the power of the official GitHub [REST API](https://docs.github.com/en/rest), we ensure that all repository metadata is accurately backed up on a daily basis, according to your preferred schedule. Protect your valuable code and project data with Cloudback.

![infrastructure](/static/infrastructure.svg)

## Service components

The service consists of the following components:

- **[Cloudback Dashboard](https://cloudback.it)**
    - The main operational dashboard to manage and configure backups of your repositories.
- **[Cloudback Documentation](https://docs.cloudback.it)**
    - The documentation website where we collect all articles regarding the Cloudback functionality.
- **[Cloudback Issue Tracker](https://github.com/cloudback/issue-tracker/issues)**
    - The issue tracker is where you can let us know about your new feature requests or report a bug.
- **[Cloudback](https://github.com/apps/cloudback) GitHub Application** 
    - We need it to access your repository data during a backup process. The GitHub App has read-only permission only.
- **[Cloudback Restore](https://github.com/apps/cloudback-restore) GitHub Application**
    - We need it to restore your repository back into GitHub. The GitHub App has read-write permission and should be uninstalled once a restore process is completed.
- **[Cloudback](https://github.com/marketplace/cloudback) GitHub Marketplace Listing**
    - We need it to manage purchase plans and the billing process. All payments are handled by GitHub Marketplace. The exception is made for invoiced customers only. Invoiced customers are handled by Cloudback's legal entity.

