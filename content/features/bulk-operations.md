---
title: Bulk Operations
weight: 10
description: Manage GitHub Backup settings faster with Cloudback's Bulk Operations
keywords: github backup, cloudback, bulk operations, bulk, operations, settings, schedule, retention, storage, state
---

# Bulk Operations

If you have a large number of repositories it is not comfortable to manage their settings using Cloudback Dashboard with the card-based user interface. Cloudback offers the `Bulk Operations` dialog instead. The dialog allows you to apply settings to many repositories with a single click.

<img src="/static/features/bulk-operations.png" alt="Bulk Operations"/>

## Repository name pattern

Repository name pattern accepts [wildcard](https://en.wikipedia.org/wiki/Wildcard_character) characters and a comma character to join multiple queries:

Wildcard characters:<br>
`*` - zero or more characters <br>
`?` - exactly one character<br>
`,` - specify multiple queries separated by a comma<br>

Samples:

For the account `cristobal-martinez` with 4 repositories `awesome`, `awesome-repos`, `books` and `static-website-example`:

* `*` - matches all repositories
* `awe*` - matches `awesome` and `awesome-repos`<br>
* `awe*,book` - matches `awesome`, `awesome-repos` and `book`<br>
* `*b*` - matches `book` and `static-website-example`<br>

## Settings that can be applied

* `Schedule` - an hour for a daily backup trigger
* `Retention` - backup archive retention policy, how many days we store an archive before we delete it
* `Storage` - storage for backup archives, could be `Cloudback` or created by a user
* `State` - schedule / unschedule, or enable / disable automated daily backups

## Learn more

- [What is inside of a backup?](/features/metadata/)
- [Customer Managed Storages](/features/customer-storages/)