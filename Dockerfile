FROM python:buster

ENV UPDATER_THREADS=10     \
    UPDATER_TIMEOUT=300    \
    UPDATER_INTERVAL=900   \
    UPDATER_APILEVEL=v1-2  \
    UPDATER_LOGLEVEL=error \
    UPDATER_URL="http://nextcloud"

RUN pip install --no-cache-dir nextcloud_news_updater

CMD [ "nextcloud-news-updater",             \
        "--threads", "${UPDATER_THREADS}",   \
        "--timeout", "${UPDATER_TIMEOUT}",   \
        "--interval", "${UPDATER_INTERVAL}", \
        "--apilevel", "${UPDATER_APILEVEL}", \
        "--loglevel", "${UPDATER_LOGLEVEL}", \
        "--user", "${UPDATER_USER}",         \
        "--password", "${UPDATER_PASSWORD}", \
        "--mode", "endless"                  \
    ]