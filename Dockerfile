FROM alpine:3.13

ENV BGMI_PATH="/app" BANGUMI_PATH="/data"

ADD ./BGmi /src
VOLUME [ "/app", "/data" ]
RUN { \
	apk add --update bash python3 curl gcc musl-dev python3-dev libffi-dev openssl-dev cargo; \
	curl https://bootstrap.pypa.io/get-pip.py | python3; \
	pip install 'requests[security]'; \
	pip install /src && rm -rf /src; \
}

ADD ./script /script
RUN chmod +x /script/*.sh
EXPOSE 80
ENTRYPOINT [ "/script/run.sh" ]
CMD [ "start" ]