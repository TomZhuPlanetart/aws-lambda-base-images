FROM scratch

ADD 08d1ddb325d8ad044fcfece92960708ab1e9f8d8a6d6265d97ec94214d2572d1.tar.xz /
ADD 23951572f158fb5c63df7a4013906b89ad88ca1a4dfc964e84bff76eebabc0c0.tar.xz /
ADD 32ecd8bd925873bed1e2b13fa616e287fa25b13643afe7c7dd6d340fe87ee737.tar.xz /
ADD 4a11daaa3db15cac9d26263af0946a8a8e38fce08e7a7c3c9709d894e3db66e3.tar.xz /
ADD aeff39372c5daef12fd8cf0558213bbcea8d445a93147c0ed5ac5029eb445c3e.tar.xz /
ADD b9b1152e78fef256f529c080400f508a16a3f3f7b6755a596f7f56df2f2418eb.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
