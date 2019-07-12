FROM ubuntu

ADD https://bellard.org/quickjs/quickjs-2019-07-09.tar.xz /tmp
RUN cd /tmp && ls
RUN cd /tmp && tar xzf quickjs-2019-07-09.tar.xz
RUN cd /tmp && ls
RUN cd /tmp/ && ls quickjs-2019-07-09

CMD sh
