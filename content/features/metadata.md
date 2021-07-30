---
title: Metadata Backups
weight: 3
---

# Metadata Backups

Cloudback archives not only the whole git repository but GitHub-specific metadata as well. The list of metadata we are able to backup is not complete and is limited by the GitHub API.

Important things to know:
- We don't backup your GitHub Account 
- We don't backup your GitHub Organization
- The resulting backup should never be considered as a complete all-embracing one

<img src="/static/features/issue-tracker-metadata.png" alt="Metadata" width=600/>

## What is included in a backup?

Here is the list of repository's data in a backup archive:

- A [bare clone](https://git-scm.com/docs/git-clone#Documentation/git-clone.txt---bare) of a git repository
- All [Topics](https://docs.github.com/en/github/administering-a-repository/managing-repository-settings/classifying-your-repository-with-topics)
- All [Milestones](https://docs.github.com/en/issues/using-labels-and-milestones-to-track-work/about-milestones)
- All [Labels](https://docs.github.com/en/issues/using-labels-and-milestones-to-track-work/managing-labels)
- All opened and closed [Issues](https://docs.github.com/en/issues/tracking-your-work-with-issues/about-issues) with comments
- All [Projects](https://docs.github.com/en/issues/trying-out-the-new-projects-experience/about-projects)
- All [Commit Comments](https://github.blog/2008-04-10-commit-comments/)

Metadata is stored as a JSON file per data type in the same format we download it from GitHub. If you want us to add any additional metadata into a backup, please, [let us know](/contact-us) or just [create a feature request](https://github.com/cloudback/issue-tracker/issues/new?template=feature_request.md) and we will consider implementing it.

## This metadata is not included yet but will be soon

We are working right now to support below data to be included as well:

- [Releases](https://docs.github.com/en/github/administering-a-repository/releasing-projects-on-github/about-releases)
- [Wikis] (https://docs.github.com/en/communities/documenting-your-project-with-wikis/about-wikis)

## This metadata is not included due to GitHub API restrictions

- [Encrypted secrets](https://docs.github.com/en/actions/reference/encrypted-secrets): Justification: there is no [API](https://docs.github.com/en/rest/reference/actions#get-a-repository-secret) to get a stored encrypted value
- [Forks](https://docs.github.com/en/github/collaborating-with-pull-requests/working-with-forks/about-forks): Justification: there is no API
- [Watchers](https://docs.github.com/en/github/managing-subscriptions-and-notifications-on-github/setting-up-notifications/about-notifications): Justification: there is no API
- [Stargazers](https://docs.github.com/en/rest/reference/activity#starring): Justification: there is no API

## What is inside an archive?

The archive represents [ZIP File Version 5.2](https://pkware.cachefly.net/webdocs/APPNOTE/APPNOTE-5.2.0.txt) with [AES-256](https://en.wikipedia.org/wiki/Advanced_Encryption_Standard) encryption. **Be aware that AES encryption is not widely supported by ZIP tools and archivers.** For instance, Microsoft Windows Compressed Folders [does not support AES encryption](https://devblogs.microsoft.com/oldnewthing/20180515-00/?p=98755) and won't be able to open any AES-encrypted ZIP archive. Please consider using third-party software. We recommend you [7-Zip](https://www.7-zip.org/) which is cross-platform and is free for commercial use (there are limitations, please refer to [7-Zip License](https://www.7-zip.org/license.txt) for details). 

Also, please note that we put one ZIP into another one. This is done to hide filenames inside an archive. Filename encryption is introduced in [ZIP File Format Specification 6.2](https://pkware.cachefly.net/webdocs/APPNOTE/APPNOTE-6.2.0.txt). We decided to keep version 5.2 for better compatibility.

Sample archive presented on screenshots below:
<br><img src="/static/features/zip-aes.png" alt="Inside a backup 1"/>

Password prompt:
<br><img src="/static/features/zip-password.png" alt="Inside a backup 2"/>

Archive content:
<br><img src="/static/features/zip-content.png" alt="Inside a backup 3"/>

## Learn more

- [What is a backup storage?](/features/various-backup-storages)