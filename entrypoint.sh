#!/bin/bash
set -euf -o pipefail

nextcloud-news-updater            \
  --threads ${UPDATER_THREADS}    \
  --timeout ${UPDATER_TIMEOUT}    \
  --interval ${UPDATER_INTERVAL}  \
  --apilevel ${UPDATER_APILEVEL}  \
  --loglevel ${UPDATER_LOGLEVEL}  \
  --user ${UPDATER_USER}          \
  --password ${UPDATER_PASSWORD}  \
  --mode endless                  \
  ${UPDATER_URL}

