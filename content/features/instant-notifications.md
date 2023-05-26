---
title: "Instant Notifications"
weight: 7
description: Configure notifications with Cloudback's Webhooks for backup updates
keywords: github backup, cloudback, instant notifications, notifications, webhook, webhooks, slack, discord, microsoft teams
---

# Instant Notifications
Cloudback supports real-time notifications via messenger services:

<img src="/static/features/instant-notifications-desktop.png" alt="Instant Notifications"/>

Instant Notifications about successful and failed backups can be configured per account in the 'Notification Settings' dialog of the main menu of **Cloudback Dashboard**. All notifications are **Webhook** based. **Webhooks** are user-defined HTTP URL callbacks. They are usually triggered to facilitate integration of different applications, in our particular case it is Cloudback and a Messenger. Within a Messenger, you can create an **Incoming Webhook** for a text channel and get a URL for created **Webhook**. Then you pass that **Webhook URL** to Cloudback, and when Cloudback wants to send a notification, it triggers the **Webhook URL** provided.

Supported messengers are [Slack](/features/instant-notifications/#slack), [Microsoft Teams](/features/instant-notifications/#microsoft-teams), and [Discord](/features/instant-notifications/#discord). If you need another one - please submit a request via our [issue tracker](https://github.com/cloudback/issue-tracker/issues/new?template=feature_request.md).

The steps to configure instant notifications are similar for all messengers:
1. Go to your messenger, create **Incoming Webhook**, and get its **Webhook URL**.
2. Go to **Cloudback Dashboard** and enter this **Webhook URL** in the 'Notification Settings' dialog.

<p align="center">
  <img src="/static/features/instant-notifications.png" data-alt="/static/features/instant-notifications.gif"
       alt="Instant Notifications Settings" onclick="swapGif(this)" style="cursor: pointer;"/>
</p>

## Slack
* Messenger website: https://slack.com
* To configure Incoming Webhook please follow the Slack guide: [Sending messages using Incoming Webhooks](https://api.slack.com/messaging/webhooks)

<p align="center">
  <img src="/static/features/instant-notifications-slack.png" alt="Discord Notification"/>
</p>

## Microsoft Teams
* Messenger website: https://www.microsoft.com/en-us/microsoft-teams
* An overview of Webhooks for Microsoft Teams: [What are webhooks and connectors](https://docs.microsoft.com/en-us/microsoftteams/platform/webhooks-and-connectors/what-are-webhooks-and-connectors)
* Tutorial on how to create an incoming webhook for Microsoft Teams: [Add incoming webhook](https://docs.microsoft.com/en-us/microsoftteams/platform/webhooks-and-connectors/how-to/add-incoming-webhook)

<p align="center">
  <img src="/static/features/instant-notifications-msteams.png" alt="Discord Notification"/>
</p>

## Discord
* Messenger website: https://discord.com
* A guide on how to create an Incoming Webhook in Discord: [Intro to Webhooks](https://support.discord.com/hc/en-us/articles/228383668-Intro-to-Webhooks)
<p align="center">
  <img src="/static/features/instant-notifications-discord.png" alt="Discord Notification"/>
</p>

## Learn more

- [Email notifications](/features/email-notifications/)
- [What is inside of a backup?](/features/metadata/)
- [Customer Managed Storages](/features/customer-storages/)
