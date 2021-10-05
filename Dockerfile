FROM alpine:3.13

RUN apk --no-cache add stress-ng

ENV CPU=2
ENV TIMEOUT="5m"
ENV EXTRA_PARAMS=""

CMD ["ash", "-c", "stress-ng --cpu $CPU --timeout $TIMEOUT $EXTRA_PARAMS"]