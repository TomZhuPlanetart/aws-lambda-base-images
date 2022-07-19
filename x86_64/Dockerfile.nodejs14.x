FROM scratch

ADD 0a492876444a949570c97df9afdd84fcb38efcae925894e58873d0f6494f9094.tar.xz /
ADD 503c17361ced038f1d3d9418303373fc9171c72c601c94aaaccd12bc23a3ca12.tar.xz /
ADD 53368e583851a43a0d3b1324b1d3a7204cc0ca53f8412dabbfb3ffdf227d9d97.tar.xz /
ADD b34771af2f994785ee00be985d7f7d8463a9f1198b21f72dcb983b23c644a601.tar.xz /
ADD b9b1152e78fef256f529c080400f508a16a3f3f7b6755a596f7f56df2f2418eb.tar.xz /
ADD c10045af6651a7dd70257c02923597304459d84a0a107c00a1b43bbac68b6515.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
