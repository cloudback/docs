---
title: "Email Notifications"
weight: 7
---

# Email Notifications

If something goes wrong and a backup process fails we will send you an email notification. We send notifications daily at 22:00 UTC with all failures in the previous 24 hours. 

Once backup is failed our Support Team gets notification as well. Is the issue is not related to [storage](/features/email-notifications/#1-storage-issue), the team starts investigation as soon as possible and reports you their findings by email.

<img src="/static/features/email-failure-notification.png" alt="Email notification"/>

## Email address 

* All emails and email notification are sent to a GitHub account [primary email address](https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-github-user-account/managing-email-preferences/changing-your-primary-email-address). 
* Email address for failed backup notifications can be changed in `Account Settings` menu:

<p align="center">
  <img src="/static/features/email-override.png" data-alt="/static/features/email-override.gif"
       alt="Change Failed Backups Notifications Email" onclick="swapGif(this)" style="cursor: pointer;"/>
</p>

## Why can a backup fail?

A backup can fail for various reasons, almost all of them fall into four categories: 

### 1. Storage issue

The issue related to storage is the most frequent cause of backup failures. Usually, Cloudback loses access to your storage and is unable to upload an archive. Below are typical situations:
- An `access token` or `shared signature` has expired
- Storage configuration has been changed, but Cloudback config was not updated
- Storage provider went offline

In order to troubleshoot a storage issue please verify your storage settings in the repository card using the `Edit storage` button:

<img src="/static/features/edit-storage.png" alt="Edit storage" width=500/>

### 2. GitHub account issue

There may be two types of issues related to your GitHub account:
- [Cloudback App](github.com/apps/cloudback) installation may be suspended or uninstalled from your account. If the application is uninstalled, Cloudback cannot access your data so backup fails.
- Repository may be deleted or inaccessible to Cloudback App
- Your GitHub account may be locked or suspended. It is rare but happens. Please check your account is accessible.

### 3. Cloudback issue 

Sometimes backup software itself can fail. It happens and our Cloudback Support Team is in charge to recover the backup, analyze a root cause and implement all necessary changes to prevent it from happening in the future. Please [contact us](/contact-us) if you think it is the case.

### 4. GitHub outage

GitHub itself may go offline, sometimes it happens and may last a few hours. Cloudback will try to backup 6 times in 6 hours. If nothing works a backup will fail. There is a [GitHub Status](https://www.githubstatus.com/) page where you can check the `API Requests` operational status.


## Notifications on a successful backup

As for now, we support failure notifications only. Please let us know if you need daily notifications of all your successful backups and we will consider implementing this feature.

## Learn more

- [What is inside of a backup?](/features/metadata)
- [What is a backup storage?](/features/various-backup-storages)
