---
title: Amazon S3 Object Lock
weight: 17
description: Customize GitHub backup schedules with Cloudback's Schedule Manager
---

# Amazon S3 Object Lock

[Amazon S3 Object Lock](https://aws.amazon.com/s3/features/object-lock/) is a feature provided by Amazon Web Services in their Simple Storage Service. It's designed to help you protect your data from being accidentally or intentionally deleted or overwritten. Cloudback supports S3 Object Lock feature for [customer-managed storages](/features/customer-storages/) and allows you to enable it for your backups.

To use S3 Object Lock, you follow these basic steps:
1. Create a new AWS S3 bucket with Object Lock enabled.
2. Configure your Cloudback's storage to apply a retention period or legal hold.

## S3 Bucket Configuration in AWS Console

Before you can lock any objects, you have to configure a bucket to use S3 Object Lock. To do this, you specify when you create the bucket that you want to enable Object Lock. After you configure a bucket for Object Lock, you can lock objects in that bucket using retention periods, legal holds, or both. You can find more information in the [official documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock-overview.html#object-lock-bucket-config).

## Storage Configuration in Cloudback Dashboard

### Optional step in the storage wizard

S3 object Lock parameters for backups are specified in the corresponding HTTP headers for the [PutObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html) API call. There is an additional step in the `Storage Wizard` where you can provide custom HTTP headers. 

Custom headers are supported for all S3 compatible storages:

- Amazon S3 Bucket: Access Point
- Amazon S3 Bucket: Access Key
- OpenStack Swift Container: S3 API
- Wasabi S3 Bucket: Access Key

Example screenshot:

![Headers](/static/features/s3-custom-headers.png)

### Custom headers for S3 Object Lock

The headers are specified in the the format `key:value` divided by a new line. Examples:

```
x-amz-object-lock-mode:COMPLIANCE
x-amz-object-lock-retain-until-date:2025-01-01T00:00:00Z
```

Below is the list of S3 Object Lock headers:

#### x-amz-object-lock-mode

Must be `COMPLIANCE` (case sensitive). If you specify `x-amz-object-lock-mode`, you must also specify `x-amz-object-lock-retain-until-date`.

#### x-amz-object-lock-retain-until-date

Format `yyyy-MM-ddThh:mm:ssZ`. The retain-until-date value must be in the format 2023-04-23T11:28:00Z. Fractional seconds are allowed, but only 3 decimal digits are preserved (milliseconds precision). Other ISO 8601 formats are not allowed. The retain-until-date must be in the future.

#### x-amz-object-lock-legal-hold
Can be `ON` or `OFF` (case-sensitive). If legal hold is `ON`, the object is placed under a legal hold. If legal hold is OFF, no legal hold is placed. Any other value results in a 400 Bad Request (InvalidArgument) error.

### Dynamic values for retain-until-date

Cloudback allows to calculate the value for `x-amz-object-lock-retain-until-date` dynamically using `liquid` templates. Cloudback uses [scriban](https://github.com/scriban/scriban) template engine to render the value of the header. Below are few examples:

- Retain the object for 1 month from the current date:
```
x-amz-object-lock-mode:COMPLIANCE
x-amz-object-lock-retain-until-date:{{ date.now | date.add_months 1 }}
```
- Retain the object for 1 year from the current date:
```
x-amz-object-lock-mode:COMPLIANCE
x-amz-object-lock-retain-until-date:{{ date.now | date.add_years 1 }}
```

Please refer to scriban documentation article to find more about scripting:
- [Date functions](https://github.com/scriban/scriban/blob/master/doc/builtins.md#binary-operations)
- [Built-in functions](https://github.com/scriban/scriban/tree/master/doc)
- [Documentation](https://github.com/scriban/scriban/tree/master/doc)

## Learn more

- [Customer Managed Storages](/features/customer-storages)
- [Amazon S3 Object Lock](https://aws.amazon.com/s3/features/object-lock/)
- [Using S3 Object Lock](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock.html)
