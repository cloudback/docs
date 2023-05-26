---
title: Metadata Backups
weight: 3
description: Secure all GitHub repository metadata with Cloudback's backups
keywords: github backup, cloudback, metadata backups, metadata, backups, github, repository, repositories
---

# Metadata Backups

Cloudback archives not only the whole git repository but GitHub-specific metadata as well. The list of metadata we are able to backup is not complete and is limited by the GitHub API.

Important things to know:
- We don't backup your GitHub Account 
- We don't backup your GitHub Organization
- The resulting backup should never be considered as a complete all-embracing one

<img src="/static/features/issue-tracker-metadata.png" alt="Metadata" width="600"/>

## What is included in a backup?

Here is the list of repository's data in a backup archive:

- A [bare clone](https://git-scm.com/docs/git-clone#Documentation/git-clone.txt---bare) of a git repository
- A clone of a [Wiki](https://docs.github.com/en/communities/documenting-your-project-with-wikis/about-wikis) repository
- All [Git LFS objects](https://docs.github.com/en/github/managing-large-files/versioning-large-files/about-git-large-file-storage)
- All [Topics](https://docs.github.com/en/github/administering-a-repository/managing-repository-settings/classifying-your-repository-with-topics)
- All [Milestones](https://docs.github.com/en/issues/using-labels-and-milestones-to-track-work/about-milestones)
- All [Labels](https://docs.github.com/en/issues/using-labels-and-milestones-to-track-work/managing-labels)
- All [Issues](https://docs.github.com/en/issues/tracking-your-work-with-issues/about-issues)
- All [Projects](https://docs.github.com/en/issues/trying-out-the-new-projects-experience/about-projects)
- All [Commit Comments](https://github.blog/2008-04-10-commit-comments/)
- All [Releases](https://docs.github.com/en/github/administering-a-repository/releasing-projects-on-github/about-releases)
- All [Collaborators](https://docs.github.com/en/rest/reference/repos#collaborators)
- All [Webhooks](https://docs.github.com/en/rest/reference/repos#webhooks) except [secret tokens](https://docs.github.com/en/developers/webhooks-and-events/webhooks/securing-your-webhooks#setting-your-secret-token). Secret tokens must be set manually after restore
- All [Pull Requests](https://docs.github.com/articles/using-pull-requests) except pull-requests without commits between branches and pull-requests from forks

Metadata is stored as a JSON file per data type in the same format we download it from GitHub. If you want us to add any additional metadata into a backup, please, [let us know](/contact-us/) or just [create a feature request](https://github.com/cloudback/issue-tracker/issues/new?template=feature_request.md) and we will consider implementing it.

## Metadata that is not included due to GitHub API restrictions

We can't backup or restore this data because of GitHub limitations. Please let us know if there is a mistake or API is changed - we will fix it as soon as possible.

- [Deploy Keys](https://docs.github.com/en/rest/reference/repos#deploy-keys):  Not accessible by GitHub Apps integration API yet
- [Autolinks](https://docs.github.com/en/rest/reference/repos#autolinks): Not accessible by GitHub Apps integration API yet
- [Environments](https://docs.github.com/en/rest/reference/repos#environments): There is no [API](https://docs.github.com/en/rest/reference/actions#get-an-environment-secret) to get environment variable value 
- [Encrypted secrets](https://docs.github.com/en/actions/reference/encrypted-secrets): There is no [API](https://docs.github.com/en/rest/reference/actions#get-a-repository-secret) to get an encrypted value
- [Forks](https://docs.github.com/en/github/collaborating-with-pull-requests/working-with-forks/about-forks): There is no API
- [Watchers](https://docs.github.com/en/github/managing-subscriptions-and-notifications-on-github/setting-up-notifications/about-notifications): There is no API
- [Stargazers](https://docs.github.com/en/rest/reference/activity#starring): There is no API
- [Commit Statuses](https://docs.github.com/en/rest/reference/repos#statuses): There is an API, but it doesn't allow to explore all statuses for a whole repository
- [Deployments](https://docs.github.com/en/rest/reference/repos#deployments): There is no API to restore completed deployments
- [Pull Requests](https://docs.github.com/articles/using-pull-requests) without commits: due to an API restriction: validation is failing with a message `No commits between feature-branch and main-branch`
- [Pull Requests](https://docs.github.com/articles/using-pull-requests) from forks: a source branch is located in the fork of the old repository. But a new repository is created during a restore process. There is no API the allows us to create a pull-request from an old repository fork into a newly created repository
- [Discussions](https://docs.github.com/en/graphql/guides/using-the-graphql-api-for-discussions): There is no API to restore discussion categories
- [ProjectV2](https://docs.github.com/en/issues/planning-and-tracking-with-projects/automating-your-project/using-the-api-to-manage-projects): There is no API to restore views and columns

## Learn more

- [Customer Managed Storages](/features/customer-storages/)
- [Password-Protected Archives](/features/archive/)
