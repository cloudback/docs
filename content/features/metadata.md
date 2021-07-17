---
title: Metadata backups
weight: 3
---

# Metadata backups

Cloudback archives not only the whole git repository but a GitHub-specific metadata as well. The list of metadata we are able to backup is not complete and limited by the GitHub API.

Important things to know:
- We don't backup your GitHub Account 
- We don't backup your GitHub Organization
- The resulting backup should never be considered as a complete all-embracing one

![Metadata](/static/features/issue-tracker-metadata.png)

## What is included in a backup?

Metadata is stored inside a backup archive as a JSON file in the same format we download it from GitHub.

- A [bare clone](https://git-scm.com/docs/git-clone#Documentation/git-clone.txt---bare) of a git repository
- All [Milestones](https://docs.github.com/en/issues/using-labels-and-milestones-to-track-work/about-milestones)
- All [Labels](https://docs.github.com/en/issues/using-labels-and-milestones-to-track-work/managing-labels)
- All open and closed [Issues](https://docs.github.com/en/issues/tracking-your-work-with-issues/about-issues) with comments

## This metadata is not included yet, but will be soon

We are working right now to support below data to be included as well.

- [Projects](https://docs.github.com/en/issues/trying-out-the-new-projects-experience/about-projects)
- [Releases](https://docs.github.com/en/github/administering-a-repository/releasing-projects-on-github/about-releases)

## This metadata is not included due to GitHub API restrictions

- [Encrypted secrets](https://docs.github.com/en/actions/reference/encrypted-secrets): Justification: there is no [API](https://docs.github.com/en/rest/reference/actions#get-a-repository-secret) to get a stored encrypted value
- [Forks](https://docs.github.com/en/github/collaborating-with-pull-requests/working-with-forks/about-forks): Justification: there is no API
- [Watchers](https://docs.github.com/en/github/managing-subscriptions-and-notifications-on-github/setting-up-notifications/about-notifications): Justification: there is no API
- [Stargazers](https://docs.github.com/en/rest/reference/activity#starring): Justification: there is no API

## What is inside a backup?

The archive represents [ZIP File Version 5.2](https://pkware.cachefly.net/webdocs/APPNOTE/APPNOTE-5.2.0.txt) with [AES](https://en.wikipedia.org/wiki/Advanced_Encryption_Standard) encryption. Please note that we put one ZIP into another one. This is done to hide the list of files and file names inside the archive. File name encryption is introduced in [ZIP File Format Specification 6.2](https://pkware.cachefly.net/webdocs/APPNOTE/APPNOTE-6.2.0.txt). We decided to keep version 5.2 for better compatibility.

Sample archive presented on screenshots below:

![Inside a backup 1](/static/features/inside-backup-1.png)
![Inside a backup 2](/static/features/inside-backup-2.png)

## Learn more

- [What is a backup storage?](/features/various-backup-storages)
- [What if a backup fails?]()