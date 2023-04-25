FROM node:alpine
RUN apk --no-cache update add ffmpeg
RUN apk --no-cache add ffmpeg
WORKDIR /usr/src/app
ADD ["tmp/dist.js", "src/index.html", "/usr/src/app/"]
RUN mkdir -p /usr/src/app/tmp
ADD tmp/dist.js /usr/src/app/tmp/dist.js
ADD src/index.html /usr/src/app/tmp/index.html
ADD package.json /usr/src/app/tmp/package.json
ADD package.json /usr/src/app/package.json
EXPOSE 3000
ENTRYPOINT ["node"]
CMD ["tmp/dist.js"]
