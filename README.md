# Home Assistant

## Backup

- Shell script [backup.sh](backup.sh)
- Prerequisites: create SSH key pair onto Home Assistant server and upload public part onto SSH backup server

## Remote Shutdown

- Shell script: [remote_shutdown.sh](remote_shutdown.sh)
- Prerequisites:
    - create SSH key pair onto Home Assistant server and upload public part onto SSH backup server
    - SSH user must be able to issue `sudo poweroff`, so please adapt sudoers file configuration accordingly