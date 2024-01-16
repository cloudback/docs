---
title: "What is a bare git repository and how Cloudback uses it?"
tags: ["General", "Cloudback", "Git"]
date: 2024-01-15
categories: ["General", "Cloudback", "Git"]
description: Cloudback archives your source code as a git bare repository.
keywords: github backup, cloudback, bare repository, bare git repository, git bare repository, bare repo, bare git repo, bare git repository, bare git repo, bare repository git
---

A Git bare repository represents a specialized form of a Git repository, distinct in structure and function from a conventional Git repository. Platforms like GitHub utilize bare repositories on their servers. Essentially, when a user initiates a clone command from GitHub, they are interacting with a bare repository stored on GitHub's server. This type of repository is optimized for server-side storage and facilitates efficient and secure management and distribution of code, without the direct editing capabilities found in standard repositories. Here's a simplified explanation:

- **No working directory**: In a standard Git repository, there's a working directory where you can view and edit files. A bare repository doesn't have this working directory. This means you can't directly edit files or run Git commands that require a working copy.

- **Only contains git data**: A bare repository contains only the contents of the .git folder (which is present in a standard repository). This includes all the version history, configurations, branches, etc., but not the actual project files as editable entities.

- **Used for sharing**: Bare repositories are typically used on servers where code is shared among multiple people. Developers don't work directly in a bare repository. Instead, they clone the bare repository to their local machine, make changes, and then push these changes back to the bare repository. This is how services like GitHub work behind the scenes.

- **Prevents direct edits**: Since there's no working directory, it prevents the scenario where someone might directly edit files on the server repository, which could cause conflicts and issues in version control.

- **Simplifies management**: For a server-side repository where you only need to manage the history and branches, not the actual files, a bare repository is more efficient and safer.

In short, think of a Git bare repository as a storage locker for Git data, used primarily for sharing and collaboration, without the capability for direct file editing or viewing.

## How Cloudback uses it?

Cloudback takes the whole bare repository from GitHub, including every branch, tag, and all the history, and saves it in an archive. This means it keeps a full copy of everything in the repository.

Cloudback archives a bare repository, storing it in the path `/repo/%REPOSITORY_NAME%.git/`. For instance, a repository named `demo` would be saved as `/repo/demo.git/` inside a ZIP archive. Furthermore, you have the option to download this ZIP archive, extract it to a local directory, and directly clone the repository from there. To clone the `demo` repository, you would use a command like

`git clone "%FULL-PATH-TO-EXTRACTED-ZIP%/repo/demo.git/"`

This allows you to clone the repository straight from the archive into your local folder, which is a convenient and efficient feature!

Learn more: 
 - [git clone --bare](https://git-scm.com/docs/git-clone#Documentation/git-clone.txt---bare)
 