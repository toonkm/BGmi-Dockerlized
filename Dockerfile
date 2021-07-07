FROM alpine:3.13

ENV BGMI_PATH="/app" BANGUMI_PATH="/data"
ENV DATA_SOURCE="bangumi_moe" ADMIN_TOKEN="1234"
ENV ENABLE_GLOBAL_FILTER="true" GLOBAL_FILTER="Leopard-Raws, hevc, x265, c-a Raws, U3-Web"

ADD ./BGmi /src
VOLUME ${BGMI_PATH}
VOLUME ${BANGUMI_PATH}
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