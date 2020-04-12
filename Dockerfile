ARG BASE_IMAGE_VERSION=latest
FROM arm32v7/alpine:$BASE_IMAGE_VERSION
LABEL image.name="epicsoft_borgbackup" \
      image.description="Simple BorgBackup Docker Image" \
      maintainer="epicsoft.de" \
      maintainer.name="Alexander Schwarz <schwarz@epicsoft.de>" \
      maintainer.copyright="Copyright 2018-2019 epicsoft.de / Alexander Schwarz" \
      license="MIT"

RUN apk --no-cache add borgbackup \
 && rm -rf /var/cache/apk/*

USER root

WORKDIR /

ENTRYPOINT [ "borg" ]

CMD [ "--show-version" ]
