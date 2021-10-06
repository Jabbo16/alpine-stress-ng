FROM alpine:3.13
LABEL org.opencontainers.image.authors="jabbo16@gmail.com"

RUN apk --no-cache add stress-ng

ENV CPU="2"
ENV LOAD="100"
ENV MEMORY="128M"
ENV TIMEOUT="5m"
ENV EXTRA_PARAMS=""

CMD ["ash", "-c", "stress-ng --cpu $CPU -l $LOAD -m 1 --vm-bytes $MEMORY --timeout $TIMEOUT $EXTRA_PARAMS"]
