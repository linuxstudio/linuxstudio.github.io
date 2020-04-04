#!/bin/bash
set -x
#
FILENAME=*
#
asciidoctor --attribute lastcommitdate="$(git log -1 --format=%cd)" \
            --attribute lastcommitid=$(git rev-parse --short HEAD) \
            $FILENAME.adoc
#            gio open $FILENAME.html
