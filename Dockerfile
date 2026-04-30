FROM hugomods/hugo:debian-std-0.161.1

WORKDIR /src
COPY . /src
EXPOSE 1313
CMD ["hugo", "server", "--bind", "0.0.0.0", "--baseURL", "http://192.168.1.220:1313/", "--buildDrafts"]
