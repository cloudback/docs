---
title: "New feature: You can enable data deduplication to reduce storage costs"
tags: ["News", "Release notes"]
date: 2022-05-06
categories: ["News", "Release notes"]
description: Reduce storage costs with Cloudback's data deduplication feature
---

The Cloudback team is pleased to announce a new feature: Data deduplication for custom storage. The use case is a daily backup for a GitHub repository that's not changed every day. The feature prevents wasting storage space just because Cloudback saves backup archives with the same content every day, even though nothing has changed in your GitHub repository. In certain scenarios, the feature can drastically reduce storage costs.

- The configuration of all existing custom storages remains unchanged and data deduplication is disabled. If you want to enable data deduplication for existing custom storage, please use the `Edit Storage` dialog in the `Repository Settings`.
- For all new custom storages, deduplication is enabled by default and can be disabled in the `New Storage` dialog.

Please see our documentation article for [data deduplication](/features/deduplication/).

<img src="/static/features/data-deduplication-label.png" alt="Data Deduplication"/>

### Learn more
 - [Data Deduplication](/features/deduplication/)
