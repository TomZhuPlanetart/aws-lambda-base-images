FROM scratch

ADD 76e952bd77324c3afa2e758e821a1b1f99aac72a8d0f184f2799b69238cf5bf3.tar.xz /
ADD 95d9c3100d971d88c0c708e0008122795d20c7752e3e9c4b7a6351295fc85893.tar.xz /
ADD a67a1f9699867aad07e701e79aecf823071221a45b35e75158f57c0c65b093c5.tar.xz /
ADD bc5f4c4b89b7eebac98a4c8d4f50865c3e0096a1e5f099907cf32f64477af497.tar.xz /
ADD f8f8bc0817166b490b8728914d6298b60e0d40abe82d067c9fb05142ef4d0869.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
