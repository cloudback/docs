---
title: How to restore backup
weight: 3
---

# How to restore a backup of your GitHub repository

After Cloudback created a backup of your GitHub repository, you may need to restore the backup at some point. The page describes the steps that should be taken to restore the backup.

To restore a backup, click on the restore icon on the repository card:

<p align="center">
  <img src="https://raw.githubusercontent.com/cloudback/docs/master/static/restore-backup/1-start-backup-restore.png" alt="restore" title="restore" class="screenshot">
</p>

Cloudback uses a separate GitHub application to restore the backups. You can install the application manually using the following [https://github.com/apps/cloudback-restore](link). If the restore application is not installed, you will be asked to do so in the modal window:

<p align="center">
  <img src="https://raw.githubusercontent.com/cloudback/docs/master/static/restore-backup/2-install-cloudback-restore.png" alt="restore" title="restore" class="screenshot">
</p>

After the restore application was installed, select the repository name where you want to restore the backup. Keep in mind that Cloudback will create a new repository, therefore the repository name should not be taken. Type the repository name and click on the 'Restore' button to start the restore process:

<p align="center">
  <img src="https://raw.githubusercontent.com/cloudback/docs/master/static/restore-backup/3-set-restore-name.png" alt="restore" title="restore" class="screenshot">
</p>

The backup restore will be displayed on the repository card:

<p align="center">
  <img src="https://raw.githubusercontent.com/cloudback/docs/master/static/restore-backup/4-restore-in-progress.png" alt="restore" title="restore" class="screenshot">
</p>

After the restore is done, you can use the 'Open restored repository' link to visit the new repository.:

<p align="center">
  <img src="https://raw.githubusercontent.com/cloudback/docs/master/static/restore-backup/5-view-restore.png" alt="restore" title="restore" class="screenshot">
</p>
