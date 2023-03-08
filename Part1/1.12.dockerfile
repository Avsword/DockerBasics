# Because we're using alpine we have to do things a tad differently than the readme told us, but.. it's fine
#       alpine is smaller.
FROM alpine:3.17

ENV NODE_VERSION 16.19.1
ENV REACT_APP_BACKEND_URL=_backend_url_/ping

EXPOSE 5000

COPY . .
## add bash and curl
RUN apk add --no-cache bash
RUN apk update && apk add curl
RUN apk add xsel
# Alpine doesn't use bash or apt or sudo, so we use apk
RUN apk add --no-cache nodejs npm
RUN node -v && npm -v
RUN npm install
RUN npm install -g serve

# Then run the build and 
# docker run -it <name> bash
# serve -s -l 5000 build