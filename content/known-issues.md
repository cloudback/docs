---
title: Known Issues
linkTitle: Known Issues
weight: 16
description: The list of Cloudback known issues
keywords: github backup, cloudback, known issues, issues
---

# Cloudback Known Issues

## 'It is required to install our GitHub Application' error occurs right after changing the organization member role to 'Owner'

Prerequisites:
- You have a GitHub organization with at least one non-owner member.
- You have a GitHub Cloudback application installed in your organization.
- Cloudback Dashboard is accessible for the organization owners only.

Steps to reproduce:
- Change the organization member role to 'Owner'.
- Open the Cloudback Dashboard.

Expected result:
- The Cloudback Dashboard is accessible.

Actual result:
- The 'It is required to install our GitHub Application' error occurs.

<p align="center">
  <img src="https://github.com/cloudback/docs/blob/master/static/issue1.png?raw=true" alt="It is required to install our GitHub Application error" class="screenshot">
</p>

Root cause:
- GitHub does not send any notification of a role change of the organization member to the GitHub application. Cloudback uses cached data. It is a known issue, confirmed by GitHub Support Team.

Workaround:
- Remove the member from the organization.
- Re-add the member to the organization with Owner role.


