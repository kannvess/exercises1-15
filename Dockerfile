FROM node:20.13.1-alpine3.20

WORKDIR /usr/src/app

COPY . .

EXPOSE 8080

ENV PORT=8080
ENV NODE_ENV=production

RUN npm ci && \
    adduser -D appuser

USER appuser

CMD ["npm", "start"]
