---
title: Amazon S3 Object Lock
weight: 17
description: Cloudback supports S3 Object Lock feature for your backups.
keywords: github backup, cloudback, amazon s3 object lock, s3 object lock, object lock, amazon s3, s3, aws s3, s3 bucket, s3 storage, s3 object lock feature
---

# Amazon S3 Object Lock

[Amazon S3 Object Lock](https://aws.amazon.com/s3/features/object-lock/) is a feature provided by Amazon Web Services in their Simple Storage Service. It's designed to help you protect your data from being accidentally or intentionally deleted or overwritten. Cloudback supports S3 Object Lock feature for [customer-managed storages](/features/customer-storages/) and allows you to enable it for your backups.

## Key Benefits of Amazon S3 Object Lock Support
- **Enhanced Data Protection**: With Amazon S3 Object Lock, you can implement retention policies to ensure your GitHub repository backups remain untouched during a specified period. This prevents the accidental or malicious deletion of your backups and offers greater peace of mind.

- **Compliance with Industry Regulations**: For organizations that need to comply with industry-specific regulations such as HIPAA, GDPR, or SEC Rule 17a-4, Amazon S3 Object Lock offers a convenient solution to meet data retention requirements.

## Get Started with Amazon S3 Object Lock

1. Create a AWS S3 bucket with Object Lock enabled:
   1. Sign in to Amazon S3 Console
   2. Enable Object Lock for your bucket: [Bucket configuration](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock-overview.html#object-lock-bucket-config)
2. Configure your Cloudback's storage with Object Lock:
   1. Sign in to your Cloudback account and navigate to repository card
   2. Open repository settings and click the 'New Storage' button to open the `Storage Wizard`
   3. Select `Amazon S3 Bucket` storage provider and fill in `Step 5` with HTTP headers

## S3 Bucket Configuration in AWS Console

Before you can lock any objects, you have to configure a bucket to use S3 Object Lock. To do this, you specify when you create the bucket that you want to enable Object Lock. After you configure a bucket for Object Lock, you can lock objects in that bucket using retention periods, legal holds, or both. You can find more information in the [official documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock-overview.html#object-lock-bucket-config).

## Storage Configuration in Cloudback Dashboard

### Storage wizard

In general, S3 object Lock parameters are specified using HTTP headers for the [PutObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html) API call. There is an additional step in the `Storage Wizard` where you can provide additional HTTP headers for backups.

Additional HTTP headers are supported for all S3 compatible storages:

- Amazon S3 Bucket: Access Point
- Amazon S3 Bucket: Access Key
- OpenStack Swift Container: S3 API
- Wasabi S3 Bucket: Access Key

Example `Storage Wizard` screenshot:

![Headers](/static/features/s3-custom-headers.png)

### HTTP headers for S3 Object Lock

The headers are specified in the the format `key:value` divided by a new line. For example:

```
x-amz-object-lock-mode:COMPLIANCE
x-amz-object-lock-retain-until-date:2025-01-01T00:00:00Z
```

Below is the list of S3 Object Lock related headers:

#### x-amz-object-lock-mode

Must be `COMPLIANCE` (case sensitive). If you specify `x-amz-object-lock-mode`, you must also specify `x-amz-object-lock-retain-until-date`.

#### x-amz-object-lock-retain-until-date

Format `yyyy-MM-ddThh:mm:ssZ`. The retain-until-date value must be in the format 2023-04-23T11:28:00Z. Fractional seconds are allowed, but only 3 decimal digits are preserved (milliseconds precision). Other ISO 8601 formats are not allowed. The retain-until-date must be in the future.

#### x-amz-object-lock-legal-hold
Can be `ON` or `OFF` (case-sensitive). If legal hold is `ON`, the object is placed under a legal hold. If legal hold is OFF, no legal hold is placed. Any other value results in a 400 Bad Request (InvalidArgument) error.

#### Content-MD5
The required `Content-MD5` header is added by Cloudback automatically, no need to specify it manually.

### Dynamic values for retain-until-date

Cloudback allows to calculate the value for `x-amz-object-lock-retain-until-date` dynamically using `liquid` templates. Cloudback uses [scriban](https://github.com/scriban/scriban) template engine to render the value of the header. Refer to the examples provided below for guidance. If you require additional scripting functionality, please consult the scriban documentation:
- [Date functions](https://github.com/scriban/scriban/blob/master/doc/builtins.md#binary-operations)
- [Built-in functions](https://github.com/scriban/scriban/tree/master/doc)
- [Documentation](https://github.com/scriban/scriban/tree/master/doc)

### Examples of HTTP headers

#### Retain the object for 1 month from the current date:
```
x-amz-object-lock-mode:COMPLIANCE
x-amz-object-lock-retain-until-date:{{ date.now | date.add_months 1 }}
```
#### Retain the object for 1 year from the current date:
```
x-amz-object-lock-mode:COMPLIANCE
x-amz-object-lock-retain-until-date:{{ date.now | date.add_years 1 }}
```

## Learn more
- [Customer Managed Storages](/features/customer-storages/)
- External Article: [Using S3 Object Lock](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock.html)
- External Article: [Managing S3 Object Lock](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock-managing.html)
