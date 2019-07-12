FROM alpine as build

RUN apk add --no-cache xz make g++
ENV VERSION=2019-07-09
ADD https://bellard.org/quickjs/quickjs-${VERSION}.tar.xz /tmp
RUN cd /tmp \
  && tar xf quickjs-${VERSION}.tar.xz \
  && cd quickjs-${VERSION} \
  && (make || true) \
  && mkdir /out \
  && mv qjs qjsbn qjsbnc qjsc run-test262 run-test262-bn doc examples /out

FROM alpine

COPY --from=build /out /quickjs
RUN mv /quickjs/qj* /quickjs/run* /usr/local/bin/ \
  && mkdir /work
WORKDIR /work
VOLUME /work

CMD sh
