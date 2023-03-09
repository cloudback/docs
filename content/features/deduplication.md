---
title: Data Deduplication
weight: 13
description: Save storage space and reduce costs with Cloudback's deduplication
---

# Data Deduplication

With data deduplication, you can save a significant amount of cloud storage space and reduce operational costs. Cloudback offers a simple but efficient technique of data deduplication.

## How deduplication works

Our backup archives are deterministic. If nothing has changed in a GitHub repository, we create the same archive before encrypting it. Once the archive is encrypted, the AES encryption makes it non-deterministic. 

Cloudback compares the checksum of a new deterministic backup with a previous deterministic backup before encrypting it. If the archives match, Cloudback doesn't upload a new archive to storage, but instead stores a link to the previous archive. The retention policy is extended for the previous archive, it's not deleted until there are valid linked backups.

Deduplication occurs when certain conditions are met:
- Deduplication is enabled for cloud storage in the `New storage` or the `Edit storage` dialogs
- The previous backup of a repository is stored in the same cloud storage
- The checksum of a previous backup matches the checksum of a new backup

## How to enable deduplication

> The feature is released on 06 May 2022, please note that:
> - Deduplication is disabled by default for all custom storage created before 06 May 2022; you must enable it manually if you want to use this feature.
> - Deduplication is enabled by default for all custom storage created after 06 May 2022; you must manually disable it if you don't want to use this feature.

Data deduplication is a custom storage setting. It's configured separately for each custom storage. Use an additional `Deduplication Type` combo box in the `New Storage` and `Edit Storage` dialogs to control the behavior of data deduplication:

<img src="/static/features/data-deduplication.png" alt="Data Deduplication"/>

## How to check if a backup is deduplicated

In the dashboard, on the repository card, you'll find the `Backup Information` tooltip available for all backups. Within the tooltip there's an additional label `Deduplication`. There it says `Yes` if the backup has been deduplicated. See the screenshot below:

<img src="/static/features/data-deduplication-label.png" alt="Data Deduplication Label"/>


## Learn more

- [What is inside of a backup?](/features/metadata)
- [Password-Protected Archives](/features/archive)