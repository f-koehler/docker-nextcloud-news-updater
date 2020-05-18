# docker-nextcloud-news-updater

![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/fabiankoehler/nextcloud-news-updater?sort=date&style=flat)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/fabiankoehler/nextcloud-news-updater)
![MicroBadger Layers](https://img.shields.io/microbadger/layers/fabiankoehler/nextcloud-news-updater)

Run the [`nextcloud-news-updater`](https://github.com/nextcloud/news-updater) inside a docker container and use the Nextcloud News REST API.

The container is configured using the default environment variables:
| Variable           | Default value      | Explanation                                                                                             |
|--------------------|--------------------|---------------------------------------------------------------------------------------------------------|
| `UPDATER_THREADS`  | `10`               | The number of feeds that are fetched in parallel, i.e. the number of threads.                           |
| `UPDATER_TIMEOUT`  | `300`              | Maximum number of seconds for updating a feed.                                                          |
| `UPDATER_INTERVAL` | `900`              | Update interval in seconds.                                                                             |
| `UPDATER_APILEVEL` | `v1-2`             | News API version (choices: `v1-2` and `v2`, the latter seems to be only a draft and should not be used) |
| `UPDATER_LOGLEVE`  | `error`            | Loglevel for the updater (choices: `error` and `info`)                                                  |
| `UPDATER_URL`      | `http://nextcloud` | URL of the Nextcloud installation.                                                                      |
| `UPDATER_USER`     |                    | Admin username used to authenticate with Nextcloud (**required**).                                      |
| `UPDATER_PASSWORD` |                    | Password for the admin user (**required**).                                                             |

Make sure that [`trusted_domains`](https://docs.nextcloud.com/server/18/admin_manual/configuration_server/config_sample_php_parameters.html?highlight=trusted) is setup correctly so that Nextcloud accepts requests on that domain.