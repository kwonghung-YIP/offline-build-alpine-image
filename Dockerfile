FROM alpine:3.13

ADD http://dl-cdn.alpinelinux.org/alpine/v3.13/main/x86_64/ncurses-libs-6.2_p20210109-r0.apk /usr/local/ncurses-libs-6.2_p20210109-r0.apk
ADD http://dl-cdn.alpinelinux.org/alpine/v3.13/main/x86_64/readline-8.1.0-r0.apk /usr/local/readline-8.1.0-r0.apk
ADD http://dl-cdn.alpinelinux.org/alpine/v3.13/main/x86_64/bash-5.1.0-r0.apk /usr/local/apk-offline/bash-5.1.0-r0.apk
#ADD http://dl-cdn.alpinelinux.org/alpine/v3.13/main/x86_64/jq-1.6-r1.apk /usr/local/apk-offline/jq-1.6-r1.apk
#ADD http://dl-cdn.alpinelinux.org/alpine/v3.13/main/x86_64/curl-7.76.1-r0.apk /usr/local/apk-offline/curl-7.76.1-r0.apk

RUN apk add --allow-untrusted \
  /usr/local/ncurses-libs-6.2_p20210109-r0.apk \
  /usr/local/readline-8.1.0-r0.apk \
  /usr/local/apk-offline/bash-5.1.0-r0.apk
