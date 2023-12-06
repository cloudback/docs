---
title: Amazon S3 Object Tagging
weight: 18
description: Cloudback supports S3 Object Tagging feature for your backups.
keywords: github backup, cloudback, amazon s3 object tag, s3 object tag, object tag, tag, amazon s3, s3, aws s3, s3 bucket, s3 storage, s3 object tag feature
---

# Amazon S3 Object Tagging

[Amazon S3 Object Tagging](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-tagging.html) is a feature provided by Amazon Web Services in their Simple Storage Service. It's designed to help you to categorize your storage. Cloudback supports S3 Object Tagging feature using custom HTTP headers for the the [PutObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html) API call.

## Getting Started

### HTTP headers for S3 Object Tagging

#### x-amz-tagging
The tag-set for the object. The tag-set must be encoded as URL Query parameters. (For example, "Key1=Value1").

Example:
```
x-amz-tagging: Key1=Value1&Key2=Value2
```

### Build-in variables

You can use the following variables in the `x-amz-tagging` header:

- `{{ context.RepositoryName }}`: The name of the repository that is being backed up.
- `{{ context.AccountName }}`: The name of the owner account of the repository that is being backed up.

Example:
```
x-amz-tagging: RepositoryName={{ context.RepositoryName }}&AccountName={{ context.AccountName }}
```

### Storage wizard

Additional HTTP headers are supported for all S3 compatible storages:

- Amazon S3 Bucket: Access Point
- Amazon S3 Bucket: Access Key
- OpenStack Swift Container: S3 API
- Wasabi S3 Bucket: Access Key

Example `Storage Wizard` screenshot:

![Headers](/static/features/s3-custom-headers.png)

## Learn more
- External Article: [Categorizing your storage using tags](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-tagging.html)
- External Article: [PutObject Request Syntax](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html#API_PutObject_RequestSyntax)
- [Amazon S3 Object Lock](/features/s3-object-lock/)
- [Customer Managed Storages](/features/customer-storages/)
