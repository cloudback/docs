---
title: "Email Notifications"
weight: 7
description: Stay informed with Cloudback's email notifications for failed backups
keywords: github backup, cloudback, email, notifications, email notifications, failed backups, backup failure
---

# Email Notifications

If something goes wrong and a backup process fails, we will send you an email notification. We send a daily notification at 22:00 UTC with all failed automatic backups in the last 24 hours.

Once a backup has failed, our support team will also be notified. If the problem is not related to [storage](/features/email-notifications/#1-storage-issue), the team will start investigating as soon as possible and notify you of the results via email.

Please note: Email notifications are only enabled for automatic backups. Cloudback does not send email notifications for manual on-demand backups.

<img src="/static/features/email-failure-notification.png" alt="email notification for automatic GitHub repository backup"/>

## Email address 

All emails and email notifications are sent to the [primary email address](https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-github-user-account/managing-email-preferences/changing-your-primary-email-address) of a GitHub account by default. However, the email address for failed backup notifications can be changed in the `Notification Settings` menu:

<p align="center">
  <img src="/static/features/email-override.png" data-alt="/static/features/email-override.gif"
       alt="change failed backups notifications email" onclick="swapGif(this)" style="cursor: pointer;"/>
</p>

## Why can a backup fail?

A backup can fail for a number of reasons, almost all of which fall into four categories:

### 1. Storage issue

The issue related to storage is the most frequent cause of backup failures. Usually, Cloudback loses access to your storage and is unable to upload an archive. Below are typical situations:
- An `access token` or `shared signature` has expired
- Storage configuration has been changed, but Cloudback config was not updated
- Storage provider went offline

In order to troubleshoot a storage issue please verify your storage settings in the repository card using the `Edit storage` button:

<img src="/static/features/edit-storage.png" alt="edit GitHub repository backup storage" width=500/>

### 2. GitHub account issue

There can be two types of issues related to your GitHub account:
- The installation of [Cloudback App](https://github.com/apps/cloudback) may be suspended or uninstalled from your account. If the app is uninstalled, Cloudback will not be able to access your data, so the backup will fail.
- The repository may be deleted or inaccessible to the Cloudback App.
- Your GitHub account may be locked or suspended. This is rare, but does happen. Please check if your account is accessible.

### 3. Cloudback issue 

Sometimes the backup software itself can fail. This happens and our Cloudback Support Team is responsible for restoring the backup, analyzing the cause and making any necessary changes to prevent this from happening in the future. Please [contact us](/contact-us/) if you believe this is the case.

### 4. GitHub outage

GitHub itself can go offline. This happens sometimes and can take a few hours. Cloudback will try to backup 6 times in 6 hours. If nothing works, a backup will fail. There is a page [GitHub Status](https://www.githubstatus.com/) where you can check the operational status of the 'API Requests'.


## Notifications on a successful backup

At the moment, you will be notified by email of failures only. Take a look at [Instant Notification](/features/instant-notifications/) - notifications about successful backups are supported there.

## Learn more

- [Instant notifications](/features/instant-notifications/)
- [What is inside of a backup?](/features/metadata/)
- [Customer Managed Storages](/features/customer-storages/)
