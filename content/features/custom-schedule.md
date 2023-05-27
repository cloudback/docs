---
title: Custom Schedules for Automatic GitHub Backups
linkTitle: Custom Schedules
weight: 16
description: Customize GitHub backup schedules with Cloudback's Schedule Manager
keywords: github backup, cloudback, custom schedule, custom schedules, schedule manager, schedule, schedules
---

# Custom Schedules

Cloudback provides build-in schedules for daily backups out of the box. If you want to backup on a weekly or monthly basis, you can create your own schedule using the `Schedule Manager` from the `Main Menu`. Once you create your own schedule, it becomes available in the `Schedule` dropdown box of repository settings.

<img src="/static/features/custom-schedule-1.png" alt="Card View"/>

## Example: Every Monday Morning Schedule

Let's create `Every Monday Morning` schedule for weekly backups step-by-step:

1. Open the `Schedule Manager` from the `Main Menu`.
2. Click the `Add a new schedule` button at the bottom right corner, it will open the `Add Schedule` dialog.
3. Type **"Every Monday Morning"** into the `Schedule name` text box
4. Choose **"4"** in the `Specific hour (choose one or many)` section. It means backup will start at 4 am.

<img src="/static/features/custom-schedule-2.png" alt="Card View"/>

5. Switch to the `Day` tab
6. Choose **"Monday"** in the `Specific day of week (choose one or many)` section. It means backup will start Monday only.

<img src="/static/features/custom-schedule-3.png" alt="Card View"/>

7. Click the `Save` button, and it will close the `Add Schedule` dialog.

<img src="/static/features/custom-schedule-4.png" alt="Card View"/>

8. Click the `Close` button, and it will close the `Schedule Manager` dialog.
9. Find your repository, open repository settings and change `Schedule` to `Every Monday Morning`.
10. Save repository settings. All done.

<img src="/static/features/custom-schedule-5.png" alt="Card View"/>

## Learn more

- [Card View](/features/card-view/)
- [Table View](/features/table-view/)
- [What is inside of a backup?](/features/metadata/)
