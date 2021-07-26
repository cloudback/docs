---
title: What is Cloudback
weight: 2
hidePageNav: false 
---

# What is Cloudback

Cloudback is the [cloud backup](https://en.wikipedia.org/wiki/Remote_backup_service) service for [GitHub repositories](https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/creating-a-repository-on-github/about-repositories). 

The main feature is the support of [various backup storages](/features/various-backup-storages). When user storage is configured we **do not store backup archives** inside Cloudback infrastructure at all. All archives are put into your storage. In case you don't have your own storage there is still an option to use our internal storage called `Cloudback`.

It uses the official GitHub [REST API](https://docs.github.com/en/rest) to access repository metadata for backups. Backups are triggered on a daily basis according to a defined schedule.

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

