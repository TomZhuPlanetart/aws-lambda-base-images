FROM scratch

ADD 0076b2d99b5c244e6d9152866abc3655163797d59442657f11a75780f5677301.tar.xz /
ADD 544f5c0ba50d77a25b230b7576e6c81f989bcd7601485430fee1f046d809ef58.tar.xz /
ADD 54a25cc2102280014702dde6c9794bfe28bf94bbd863eb0815681571425f6dc7.tar.xz /
ADD 6639843c7197a7a1a74a622d3ee5a5dac8d1726751ca680d1e038bdbdba5b794.tar.xz /
ADD 96a42aadfd1bdc048b1d6d4914749e2a78e139dbd76c570f03c1d12732b2250c.tar.xz /
ADD f41fff59d6cd2fbc009fb8c95f3ac22dc6e003764e2710705bc65159c4fd61c0.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
