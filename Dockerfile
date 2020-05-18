FROM python:alpine

ENV UPDATER_THREADS=10     \
    UPDATER_TIMEOUT=300    \
    UPDATER_INTERVAL=900   \
    UPDATER_APILEVEL=v1-2  \
    UPDATER_LOGLEVEL=error \
    UPDATER_URL="http://nextcloud"

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY entrypoint.sh /bin/entrypoint.sh
CMD [ "/bin/entrypoint.sh" ]
