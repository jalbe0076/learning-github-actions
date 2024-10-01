FROM alpine

RUN apk add --no-cache \
        bash           \
        httpie         \
        jq &&          \
        which bash &&  \
        which http &&  \
        which jq

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
COPY sample_push_event.json /Ch05/05_05/sample_push_event.json

ENTRYPOINT ["entrypoint.sh"]
# docker build --tag keyword-release .
# docker build -f path/to/Dockerfile --tag keyword-release .

# docker build -f Ch05/05_05/Dockerfile --tag keyword-release Ch05/05_05
# This sets the build context to the Ch05/05_05 directory, where Docker can find entrypoint.sh.