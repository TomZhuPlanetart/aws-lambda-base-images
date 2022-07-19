FROM scratch

ADD 544f5c0ba50d77a25b230b7576e6c81f989bcd7601485430fee1f046d809ef58.tar.xz /
ADD 72899af2e053b4a567ab96f6cc1770e618fd0cbfd4ec0a5598660a0bea6a7d94.tar.xz /
ADD 80be7fbb604c5a837f7ae1da3035b2321ee74b91d4b44a983c7d62af32c2ae60.tar.xz /
ADD 9a0974624a4ad79c2d298731ec2bcdd6d1ceb74c2508d0fef79f8cfbe719e57a.tar.xz /
ADD a24936b2ad8cbb6deed90ebdb35c0cbc3e46100fbea177395fec33b80697288d.tar.xz /
ADD d9874563af1a006ac28264962764a6e7ba7cb79885a4211c2296a391f24f3bb6.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
