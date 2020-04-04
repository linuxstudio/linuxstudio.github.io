#!/bin/bash
set -x
#
FILENAME=$(find . -type f -name "*.adoc")
#
asciidoctor --attribute lastcommitdate="$(git log -1 --format=%cd)" \
            --attribute lastcommitid=$(git rev-parse --short HEAD) \
            $FILENAME
#            gio open $FILENAME.html
