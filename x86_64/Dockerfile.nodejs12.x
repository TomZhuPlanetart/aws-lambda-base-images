FROM scratch

ADD 131cf795b7466804feb162a26cbeea23e98bd0120341952bcdd8228edf013a2e.tar.xz /
ADD 277289ee4ff1c16710da31e4ece603e09631f1523cf069dc9123dc32009c4d65.tar.xz /
ADD 3fe6340bbb274152f52f0e3c6bb8ff32f090ff1e86221ab27bfb36de8c26f64b.tar.xz /
ADD 7ad8151ad1c42f5d92a3287874871b7f3cca0b7c1886adb746c3db3bf02f98ba.tar.xz /
ADD ae17423f6cefb7848de53982ab34fa22b1e1410fab27c6b0caf4e0c56a93ce5a.tar.xz /
ADD b9b1152e78fef256f529c080400f508a16a3f3f7b6755a596f7f56df2f2418eb.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
