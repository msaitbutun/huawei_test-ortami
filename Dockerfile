FROM nginx:alpine
RUN apk add --no-cache git
WORKDIR /usr/share/nginx/html
RUN git clone https://github.com/msaitbutun/huawei_test-ortami.git /tmp/repo && \
cp /tmp/repo/index.html ./index.html && \
cp /tmp/repo/error.html ./error.html
