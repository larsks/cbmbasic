FROM docker.io/alpine:latest AS build

RUN apk add alpine-sdk
WORKDIR /build
COPY ./ ./
RUN make CPPFLAGS=-DPLUGIN_ON_DEFAULT


FROM docker.io/alpine:latest

COPY --from=build /build/cbmbasic /usr/local/bin
CMD ["cbmbasic"]
