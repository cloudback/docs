---ip@whatsapp.com Sto ages

title: Various Backup Storages
weight: 2
---

# Various Backup Storages

Cloudback allows you to store a backup archive in your own storage, leaving no copies to us. That is. Cloudback backs up a repository into an archive, sends the archive to your storage, and wipes the archive from Cloudback's disk leaving no chance to recover any data from the Cloudback servers.

Also, we offer our in-build storage named just `Cloudback`.

<img src="/static/features/storages-wizard-combobox.png" alt="Storages" width="500"/>

## Register your storage

In order to tell Cloudback to store backups into your own storage, please use the `+ New storage` button in the settings of the repository card. The button opens a simple wizard that guides you through the registration process. Please refer to a particular storage page to learn about specific steps.

Please note, that you could apply recently registered storage to all your repositories using the `Bulk Operations` menu.

<p align="center">
  <img src="/static/features/storages-wizard.png" data-alt="/static/features/storages-wizard.gif"
       alt="Storage Wizard" onclick="swapGif(this)" style="cursor: pointer;"/>
</p>


## Supported storages

Please follow the link below to find additional details about particular storage:

- Cloudback in-build storage
- [Microsoft Azure Blob Storage](/custom-storages/microsoft-azure-blob-container/)
- [Microsoft OneDrive Personal](/custom-storages/onedrive)
- [Microsoft OneDrive For Business](/custom-storages/onedrive)
- [Amazon S3 Bucket via Access Point](/custom-storages/amazon-s3-bucket)
- [Amazon S3 Bucket via Access Key](/custom-storages/amazon-s3-bucket-access-key)
- [Amazon S3 Glacier](/custom-storages/amazon-s3-glacier)
- [Google Cloud Storage Bucket](/custom-storages/google-cloud)
- [Alibaba Cloud Object Storage Service](/custom-storages/alibaba-cloud)
- [OpenStack Swift Container via S3 API](/custom-storages/swift)
- [Wasabi Bucket (S3 API)](/custom-storages/wasabi)

## Need another storage?

We added support of [OpenStack Swift](https://github.com/cloudback/issue-tracker/issues/6) and [Microsoft OneDrive](https://github.com/cloudback/issue-tracker/issues/7) within a feature request of our users. [Contact us](/contact-us) or [create a feature request](https://github.com/cloudback/issue-tracker/issues/new?template=feature_request.md) and we will consider implementing your storage.

## What we upload to the storage?

We upload password-protected zip archives. The password is encrypted and stored at our side. The password is well protected behind several security layers. If someone breaks into any storage he will get useless encrypted archives and no chance to access archive content.

## Learn more

- [What is inside of a backup?](/features/metadata)
- [Data Deduplication](/features/deduplication/)
