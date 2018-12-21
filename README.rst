
==========
Cloud-sync
==========

Sync content in the local filesystem to Dropbox *without* installing the Dropbox client on the local host.
Uses the Dropbox client running in an isolated VM.
Files are copied into the VM using SFTP.  


Environment variables
=====================

``VMNAME``
    Virtual machine name

``TARGET``
    Name of directory to sync

``SOURCEBASE``
    Path to root of sync content, in local filesystem

``DESTBASE``
    Path to root of sync destination, in remote SFTP filesystem

``DESTUSER``
    SFTP username

``DESTHOST``
    SFTP server

``DESTPORT``
    SFTP port
