---
title: "We support new storage now: OpenStack Swift"
tags: ["News", "Release notes"]
date: 2021-05-11
categories: ["News", "Release notes"]
description: Use Cloudback to backup GitHub repos into OpenStack Swift storage
---

A few weeks ago, we got a new feature request in our [issue tracker](https://github.com/cloudback/issue-tracker/issues). One of Cloudback users asked us to add support for the OpenStack Swift storage provider. We discussed the feature request within the team and started development. We decided to use an S3 API gateway of OpenStack Swift. As a side effect, we introduced an S3 access-key-based provider in addition to OpenStack Swift. Now Cloudback supports any S3 API compatible storage provider.

The development process took around two weeks, and today we are pleased to announce that Cloudback adds two storage providers to the supported providers' list: OpenStack Swift via S3 API and S3 API access-key-based storage.

Feel free to use our issues tracker to create a new feature request. That can be anything from minor UI improvements to a new storage provider support.

Learn more: 
 - [Customer Managed Storages](https://docs.cloudback.it/features/customer-storages)