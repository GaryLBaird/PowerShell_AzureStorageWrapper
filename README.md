# Getting Started with PowerShell_AzureStorageCLI_Wrapper
This page will help you get started with PowerShell_AzureStorageCLI_Wrapper. 

# Seeking Help
Please contact me if you would like to participate in the project.

# OS Support
| OS Support|||
|------------------ | -------- | -------------------------|
| Operating System | Date | Description |
| OSX | TBD | Apple |
| Windows | Current | Microsoft Windows 2012 - current |
| Linux   | TBD | Base Linux Distros that include Microsoft PowerShell Core |

##### Project Link
https://github.com/users/GaryLBaird/projects/1

## PowerShell_AzureStorageWrapper
Aims to bridge the gap between the Azure PowerShell CLI and standard folder copy functions without using the azcopy.exe utility. For now, this will build wrappers around the azcopy utility, but the intent is to completely replace it with a functioning pure code solution without the need for using the binaries.

## The Azure PowerShell Module
This module attempts to enhance the Azure PowerShell Module and is not intended for use with the older AzureRM module. Although it is possible to make it work with both the focus will be on making it work current modules.

## Why Create A New Module
Using azcopy.exe might be the easiest way to move files on Azure but this can be problematic if you don't want to have binaries included in automation. This project aims to provide a similar set of functions but in pure code.

## Transfer data
After you've authorized your identity or obtained a SAS token, you can begin transferring data.
Functions:

- Upload files to Azure Blob Storage
- Download blobs from Azure Blob Storage
- Copy blobs between Azure storage accounts
- Synchronize with Azure Blob Storage
- Transfer date with AZCopy and file storage
- Copy data from Amazon S3 to Azure Storage
- Copy data from Google Cloud Storage to Azure Storage
- Transfer data with AzCopy and Azure Stack storage

## Authenticate
Authenticate using multiple methods

## List of commands
| Command | Description |
| -------------------------------------- | ----------------------------------------------------- |
| `azcopy bench` | Runs a performance benchmark by uploading or downloading test data to or from a specified location.|
| `azcopy copy` | Copies source data to a destination location|
| `azcopy doc` | Generates documentation for the tool in Markdown format.|
| `azcopy env` | Shows the environment variables that can configure AzCopy's behavior.|
| `azcopy jobs`  | Subcommands related to managing jobs.|
| `azcopy jobs clean` | Remove all log and plan files for all jobs.|
| `azcopy jobs list` | Displays information on all jobs.|
| `azcopy jobs remove` | Remove all files associated with the given job ID.|
| `azcopy jobs resume`  | Resumes the existing job with the given job ID.|
| `azcopy jobs show` | Shows detailed information for the given job ID.|
| `azcopy load` | Subcommands related to transferring data in specific formats.|
| `azcopy load clfs` | Transfers local data into a Container and stores it in Microsoft's Avere Cloud FileSystem (CLFS) format.|
| `azcopy list` | Lists the entities in a given resource.|
| `azcopy login` | Logs in to Azure Active Directory to access Azure Storage resources.|
| `azcopy logout` | Logs the user out and terminates access to Azure Storage resources.|
| `azcopy make` | Creates a container or file share.|
| `azcopy remove` | Delete blobs or files from an Azure storage account.|
| `azcopy sync` | Replicates the source location to the destination location.|

## Automatically Obtain Static Download Links for azcopy and install the application
| Operating system | Command |
| ------------------------- | ----------------------------------------------------- |
| Linux | wget -O azcopy_v10.tar.gz https://aka.ms/downloadazcopy-v10-linux && tar -xf azcopy_v10.tar.gz --strip-components=1|
|Windows | Invoke-WebRequest https://azcopyvnext.azureedge.net/release20190517/azcopy_windows_amd64_10.1.2.zip -OutFile azcopyv10.zip UNZIP HERE|
