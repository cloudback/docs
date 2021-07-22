---
title: One-Click Manual Backups
weight: 4
---

# One-Click Manual Backups

Cloudback allows you to trigger a backup process on demand by clicking a single button. There are several use-cases when manual backups are useful:

- You want to download [your up-to-date data](features/metadata), no need to wait for an automatic trigger
- You want to test [your own storage](/features/various-backup-storages) that you configured recently
- You want to secure your data at a specific point in time

<img src="/static/features/manual-backup.png" alt="Manual Backup" width=500/>

## Works only for scheduled repositories

The `Trigger backup now!` button is enabled only for scheduled repositories. You can schedule a repository in the `Repository settings` dialog of the card on the dashboard:

<p align="center">
  <img src="/static/features/schedule-if-disabled.png" data-alt="/static/features/schedule-if-disabled.gif"
       alt="Schedule if disabled" onclick="swapGif(this)" style="cursor: pointer;"/>
</p>

## Number of scheduled repositories

The overall number of scheduled repositories depends on a purchased [GitHub Marketplace Plan](https://github.com/marketplace/cloudback) and a purchased number of `units`. The detailed information on the available number of `units` can be found in the `Billing profile` dialog in the `Main menu`:

- Repositories section:
  - **Purchased**: the overall number of purchased repositories
  - **In use**: the number of scheduled repositories
  - **Remaining**: the delta between the number of purchased and the number of scheduled

<img src="/static/features/billing-profile.png" alt="Billing Profile"/>


## Trigger a backup

Once your repository is scheduled, just click a button and trigger a backup, that's all:

<p align="center">
  <img src="/static/features/manual-backup-trigger.png" data-alt="/static/features/manual-backup-trigger.gif"
       alt="Trigger a manual backup" onclick="swapGif(this)" style="cursor: pointer;"/>
</p>

## Email notification are disabled for manual backups

Please note, that you will receive no email notifications for manual backups. Email notifications are enabled for automatic backup only.

## Learn more

- [What is a backup storage?](/features/various-backup-storages)
- [What is an email notification?]()
- [What if a backup fails?]()