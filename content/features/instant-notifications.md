---
title: "Instant Notifications"
weight: 7
---

# Instant Notifications

Cloudback supports real-time notifications via messenger services. Notifications about successful and failed backups are supported and can be configured per account in the `Notification Settings` dialog of the main menu. All notifications are webhook based - you need to configure your messenger service and get a special webhook URL.

Supported messengers:
                            
- [Slack](/features/instant-notifications#slack)
- [Microsoft Teams](/features/instant-notifications#microsoft-teams)
- [Discord](/features/instant-notifications#discord)
- Need another one? Please raise a feature request: [link](https://github.com/cloudback/issue-tracker/issues/new?template=feature_request.md)

<p align="center">
  <img src="/static/features/instant-notifications.png" data-alt="/static/features/instant-notifications.gif"
       alt="Instant Notifications Settings" onclick="swapGif(this)" style="cursor: pointer;"/>
</p>

## Slack
* Website: https://slack.com
* Webhook guide: https://api.slack.com/messaging/webhooks

<p align="center">
  <img src="/static/features/instant-notifications-slack.png" alt="Discord Notification"/>
</p>

## Microsoft Teams
* Website: https://www.microsoft.com/en-us/microsoft-teams
* Webhook guide: https://docs.microsoft.com/en-us/microsoftteams/platform/webhooks-and-connectors/how-to/add-incoming-webhook

<p align="center">
  <img src="/static/features/instant-notifications-msteams.png" alt="Discord Notification"/>
</p>

## Discord
* Website: https://discord.com
* Webhook guide: https://support.discord.com/hc/en-us/articles/228383668-Intro-to-Webhooks
<p align="center">
  <img src="/static/features/instant-notifications-discord.png" alt="Discord Notification"/>
</p>

## Learn more

- [Email notifications](/features/email-notifications)
- [What is inside of a backup?](/features/metadata)
- [What is a backup storage?](/features/various-backup-storages)
