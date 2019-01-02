
==========
Cloud-sync
==========

Sync content in a local filesystem to Dropbox without installing the Dropbox client locally.
Uses a Dropbox client running in an isolated VM.
Files are copied into the VM using SFTP.


Environment variables
=====================

``VMNAME``
    Virtual machine name

``TARGET``
    Name of directory to sync

``SOURCEBASE``
    Path to source sync root, in local filesystem

``DESTBASE``
    Path to destination sync root, in remote SFTP filesystem

``DESTUSER``
    SFTP username

``DESTHOST``
    SFTP server

``DESTPORT``
    SFTP port
