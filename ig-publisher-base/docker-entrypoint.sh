#!/bin/bash
set -e

# Change uid and gid of node user so it matches ownership of current dir
if [ "$MAP_NODE_UID" != "no" ]; then
    if [ ! -d "$MAP_NODE_UID" ]; then
        MAP_NODE_UID=$PWD
    fi

    uid=$(stat -c '%u' "$MAP_NODE_UID")
    gid=$(stat -c '%g' "$MAP_NODE_UID")
    echo "publisher ---> UID = $uid / GID = $gid"

    export USER=publisher

    usermod -u $uid publisher 2> /dev/null && {
      groupmod -g $gid publisher 2> /dev/null || usermod -a -G $gid publisher
    }
fi

# === Download WHO SMART template if not already present ===
TEMPLATE_DIR="/home/publisher/local-template"
if [ ! -d "$TEMPLATE_DIR/package" ]; then
    echo "Downloading who.fhir.template from smart-base..."
    mkdir -p "$TEMPLATE_DIR"
    curl -L --silent --fail \
         https://github.com/WorldHealthOrganization/smart-base/archive/refs/heads/main.tar.gz \
         | tar -xz --strip-components=1 -C "$TEMPLATE_DIR" \
           smart-base-main/local-template
    echo "who.fhir.template downloaded successfully."
fi

# gosu publisher "/home/publisher/bin/with-latest-sushi.sh"
exec su-exec publisher "$@"
