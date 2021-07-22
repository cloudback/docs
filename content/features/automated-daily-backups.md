---
title: Automated Daily Backups
weight: 1
---

# Automated Daily Backups

This is why we created Cloudback - to continuously backup a repository and its metadata on a daily basis. Cloudback captures a backup daily at a defined hour according to a defined time zone and puts a resulting archive into defined storage.

<img src="/static/features/triggered-automatically.png" alt="Backup" width=500/>

## Schedule

You can configure the exact hour you want to capture a backup every day. We recommend you to choose an hour when your repositories are not in use. For instance, it could be an early morning hour.

Here is how you can change the schedule for an individual repository:

<p align="center">
  <img src="/static/features/change-backup-schedule.png" data-alt="/static/features/change-backup-schedule.gif"
       alt="Change Backup Schedule" onclick="swapGif(this)" style="cursor: pointer;"/>
</p>

Also, there is an option to change the schedule for all repositories in a GitHub account via the `Bulk Operations` menu:

<p align="center">
  <img src="/static/features/change-schedule-bulk.png" data-alt="/static/features/change-schedule-bulk.gif"
       alt="Change Schedule in a Bulk" onclick="swapGif(this)" style="cursor: pointer;"/>
</p>

## Time zone

Please be aware that a backup schedule is sensitive to the account time zone you define at the initial setup. Additionally, you could verify and change the time zone in the `Account Settings` menu:

<p align="center">
  <img src="/static/features/account-time-zone.png" data-alt="/static/features/account-time-zone.gif"
       alt="Change Schedule in a Bulk" onclick="swapGif(this)" style="cursor: pointer;"/>
</p>

## Retention policy

You could configure for how long we store your backup before we wipe it completely. There are a few predefined options we consider sufficient for the majority of use-cases. The setting is available both in the card and in the Bulk Operation dialog.

Available options:
- 30 days (default)
- 90 days
- 180 days
- 360 days
- Need more? [Let us know!](/contact-us)

## Learn more

- [What is inside of a backup?](/features/metadata)
- [What is a backup storage?](/features/various-backup-storages)
