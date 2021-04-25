---
title: How to backup GitHub repository
weight: 2
---

# How to backup GitHub repository

## Automatically created backups

There are two ways how Cloudback creates GitHub repository backups. The first way is automatically created backups that are displayed in the repository card in the Cloudback Dashboard. The backups are created using the schedule that is set up in the repository settings. The repository status 'Scheduled' indicates that Cloudback will automatically create GitHub repository backup using the schedule. Automatically created backups are marked with the 'Clock' icon. 

<p align="center">
  <img src="https://raw.githubusercontent.com/cloudback/docs/master/static/cloudback/cloudback-5-cloudback-dashboard-automatically-created-backup-succeeded.png" alt="automatically created backup" title="automatically created backup" class="screenshot">
</p>

## Manually triggered GitHub repository backup

The second way is to manually trigger the backup job. This can be done by clicking on the 'Trigger backup now' button in the top right corner of the repository card.

<p align="center">
  <img src="https://raw.githubusercontent.com/cloudback/docs/master/static/cloudback/cloudback-2-cloudback-dashboard-trigger-backup.png" alt="trigger backup manually" title="trigger backup manually" class="screenshot">
</p>

After the backup is triggered the repository card is updated with the current backup status. 

<p align="center">
  <img src="https://raw.githubusercontent.com/cloudback/docs/master/static/cloudback/cloudback-3-cloudback-dashboard-triggered-backup.png" alt="triggered backup manually" title="triggered backup manually" class="screenshot">
</p>

The repository card is automatically updated until the 'Succeeded' status is displayed.

<p align="center">
  <img src="https://raw.githubusercontent.com/cloudback/docs/master/static/cloudback/cloudback-4-cloudback-dashboard-backup-succeeded.png" alt="backup succeeded" title="backup succeeded" class="screenshot">
</p>
