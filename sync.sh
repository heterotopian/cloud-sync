#!/bin/bash -e

TARGET=Dropbox/encrypted
SOURCEBASE=~/virtual/dropbox-common/
SOURCE="${SOURCEBASE}${TARGET}"
DESTHOST="chris@localhost"
DESTBASE=/home/chris/
DEST="${DESTHOST}:${DESTBASE}${TARGET}"

upload_vm () {
    rsync -e "ssh -p 2222" -apP --del "${SOURCE}/" "${DEST}"
}

run_dropbox () {
    ssh -p 2222 -q chris@localhost <<'EOF'
    dropbox running || { dropbox stop; pgrep -f dropbox | xargs -r kill; }
    dropbox start 2> /dev/null
    STATUS=$(dropbox status)
    until [ "${STATUS}" == "Up to date" ] ; do
        echo $STATUS
        sleep 5
        STATUS=$(dropbox status)
    done
    dropbox stop
EOF
}

upload_vm
run_dropbox
