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
- A [Git Large File Storage](https://docs.github.com/en/github/managing-large-files/versioning-large-files/about-git-large-file-storage)
- A regular clone of a [Wiki](https://docs.github.com/en/communities/documenting-your-project-with-wikis/about-wikis) repository
- All [Topics](https://docs.github.com/en/github/administering-a-repository/managing-repository-settings/classifying-your-repository-with-topics)
- All [Milestones](https://docs.github.com/en/issues/using-labels-and-milestones-to-track-work/about-milestones)
- All [Labels](https://docs.github.com/en/issues/using-labels-and-milestones-to-track-work/managing-labels)
- All [Issues](https://docs.github.com/en/issues/tracking-your-work-with-issues/about-issues)
- All [Projects](https://docs.github.com/en/issues/trying-out-the-new-projects-experience/about-projects)
- All [Commit Comments](https://github.blog/2008-04-10-commit-comments/)
- All [Releases](https://docs.github.com/en/github/administering-a-repository/releasing-projects-on-github/about-releases)

Metadata is stored as a JSON file per data type in the same format we download it from GitHub. If you want us to add any additional metadata into a backup, please, [let us know](/contact-us) or just [create a feature request](https://github.com/cloudback/issue-tracker/issues/new?template=feature_request.md) and we will consider implementing it.

## This metadata is not included yet 

The metadata listed below are in our plans for future releases. You can speed up the release if you up-vote by email. Just let us know and we consider changing its priority to a higher one.

- All [Deploy Keys](https://docs.github.com/en/rest/reference/repos#deploy-keys)
- All [Collaborators](https://docs.github.com/en/rest/reference/repos#collaborators)
- All [Environments](https://docs.github.com/en/rest/reference/repos#environments)
- All [Discussions](https://docs.github.com/en/graphql/guides/using-the-graphql-api-for-discussions)
- All [Webhooks](https://docs.github.com/en/rest/reference/repos#webhooks)
- All [Autolinks](https://docs.github.com/en/rest/reference/repos#autolinks)

## This metadata is not included due to GitHub API restrictions

We can't backup or restore this data because of GitHub limitations. Please let us know if there is a mistake or API is changed - we will fix it as soon as possible.

- [Encrypted secrets](https://docs.github.com/en/actions/reference/encrypted-secrets): Justification: there is no [API](https://docs.github.com/en/rest/reference/actions#get-a-repository-secret) to get a stored encrypted value
- [Forks](https://docs.github.com/en/github/collaborating-with-pull-requests/working-with-forks/about-forks): Justification: there is no API
- [Watchers](https://docs.github.com/en/github/managing-subscriptions-and-notifications-on-github/setting-up-notifications/about-notifications): Justification: there is no API
- [Stargazers](https://docs.github.com/en/rest/reference/activity#starring): Justification: there is no API
- [Commit Statuses](https://docs.github.com/en/rest/reference/repos#statuses): Justification: there is an API, but it doesn''t allow to explore all statuses for a whole repository
- [Deployments](https://docs.github.com/en/rest/reference/repos#deployments): Justification: there is no API to restore completed deployments

## Learn more

- [What is inside of an archive?](/features/archive)
- [What is a backup storage?](/features/various-backup-storages)