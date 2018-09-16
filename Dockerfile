ARG ALPINE_IMAGE=alpine

FROM "${ALPINE_IMAGE}"

ARG APK_REPOSITORY=http://dl-cdn.alpinelinux.org/alpine
ARG APK_BRANCH=edge

RUN echo "@testing ${APK_REPOSITORY}/${APK_BRANCH}/testing" >> /etc/apk/repositories && \
    apk --no-cache add \
    3proxy@testing \
    su-exec

COPY /rootfs /

CMD [ "3proxy", "/3proxy.cfg" ]
