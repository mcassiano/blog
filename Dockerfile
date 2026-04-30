FROM hugomods/hugo:debian-std-0.161.1

WORKDIR /src
COPY . /src
EXPOSE 1313
CMD ["hugo", "server", "--bind", "0.0.0.0", "--baseURL", "http://localhost:1313/", "--buildDrafts"]
