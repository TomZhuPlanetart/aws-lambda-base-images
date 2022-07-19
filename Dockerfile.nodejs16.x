FROM scratch
ADD x86_64/287d026de40c0c8968342bb9349df1e79d5e88e6818d7d0b16f0a3ff59b71386.tar.xz /
ADD x86_64/31d14fe11abcaeb542ba0e7fd4387c4af100c7ea09619a55d563ccbc78723810.tar.xz /
ADD x86_64/461cc473d65f6c4af0fdc73cc72f277cc26ee1b022aeb076ddad6c79fc3e98b4.tar.xz /
ADD x86_64/87dee77a1c5f305af1319a217e3b4927e2fadc820ceaa1a7ead23b3049eb4fc7.tar.xz /
ADD x86_64/9797f1e2d9c9fd6ce4fb5eb3eb4d95f2d0dca5668b8cccfafffcef68a8931cd5.tar.xz /
ADD x86_64/b9b1152e78fef256f529c080400f508a16a3f3f7b6755a596f7f56df2f2418eb.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
