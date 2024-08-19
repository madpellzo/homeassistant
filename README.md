# Home Assistant

## Orange UHD TV Decoder API

From blog post: https://communaute.orange.fr/t5/TV-par-ADSL-et-Fibre/API-pour-commander-le-decodeur-TV-depusi-une-tablette/td-p/43443

Status: http://<UHD_DECODER_IP>:8080/remoteControl/cmd?operation=10

http://<UHD_DECODER_IP>:8080/remoteControl/cmd?operation=01&key=<KEY_CODE>&mode=<MODE_NUMBER>

MODE_NUMBER:
0 : envoi unique de touche
1 : appui prolongé de touche
2 : relacher la touche après un appui prolongé

KEY_CODE:
116 : ON/OFF
512 : 0
513 : 1
514 : 2
515 : 3
516 : 4
517 : 5
518 : 6
519 : 7
520 : 8
521 : 9
402 : CH+
403 : CH-
115 : VOL+
114 : VOL-
113 : MUTE
103 : UP
108 : DOWN
105 : LEFT
116 : RIGHT
352 : OK
158 : BACK
139 : MENU
164 : PLAY/PAUSE
168 : FBWD
159 : FFWD
167 : REC
393 : VOD

## Orange UHD Decoder HA Integration

https://github.com/AkA57/liveboxtvuhd/tree/master

## Backup

- Shell script [backup.sh](backup.sh)
- Prerequisites: create SSH key pair onto Home Assistant server and upload public part onto SSH backup server

## Remote Shutdown

- Shell script: [remote_shutdown.sh](remote_shutdown.sh)
- Prerequisites:
    - create SSH key pair onto Home Assistant server and upload public part onto SSH backup server
    - SSH user must be able to issue `sudo poweroff`, so please adapt sudoers file configuration accordingly