FROM node:21-alpine3.18 as builder
WORKDIR /home/build
COPY . .
RUN npm run build

FROM node:21-alpine3.18 as app
WORKDIR /home/app
COPY --from=builder /home/build/build /home/app/build
COPY --from=builder /home/build/package.json /home/app/package.json
CMD ["node", "build"]
