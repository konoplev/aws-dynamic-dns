FROM python:3.7-alpine

RUN apk update && apk add bash bind-tools && pip install awscli

COPY scripts/update.sh /opt/

CMD ["/opt/update.sh"]
