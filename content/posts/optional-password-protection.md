---
title: "Archive encryption is now optional"
tags: ["News", "Release notes"]
date: 2021-10-19
categories: ["News", "Release notes"]
description: Cloudback now offers optional archive encryption using AES-256
keywords: github backup, cloudback, archive, zip, aes-256, encryption, password, password-protected, password-protected zip archive, password-protected zip archives, password-protected zip archive, password-protected zip archives
---

For security reasons, Cloudback uses [AES-256](https://en.wikipedia.org/wiki/Advanced_Encryption_Standard) encryption for all backup archives. If you download a specific backup, you can access its content using the password. The password is sent automatically to your GitHub account primary email. However, some people may find this approach a little bit overcomplicated, especially when using [customer managed storage](/features/customer-storages/) somewhere inside your own secure infrastructure.

We are glad to announce that it is possible to opt-out of password-based encryption now. We added a new `Archive type` dropdown box into the `Create storage` and the `Edit storage` dialogs.  You can choose one of the two archive types:

1. **Password-protected ZIP archive**. This means Cloudback will create each backup as a password-protected encrypted archive.
2. **ZIP archive without password protection**. Choosing this option will disable password-based encryption, so please make sure to take the necessary actions to protect your backups.

<img src="/static/blog/archive-type.png" alt="GitHub repository backup password protection" style="width: 100%;"/>

### Learn more
 - [Password-Protected Archives](/features/archive/)
