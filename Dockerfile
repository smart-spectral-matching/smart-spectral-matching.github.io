FROM jekyll/builder:3.8 AS builder
WORKDIR /srv/jekyll
COPY Gemfile ./
RUN bundle install
STOPSIGNAL SIGQUIT
CMD ["/usr/local/bundle/bin/bundle", "exec", "/usr/local/bundle/bin/jekyll", "serve", "--livereload", "--incremental"]

FROM builder as production
COPY . .
RUN jekyll build && cp -r ./_site /build

FROM nginx:alpine AS serv
COPY --from=production /build /usr/share/nginx/html
