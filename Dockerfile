FROM node:21-alpine3.18 as builder
WORKDIR /home/build
COPY . .
RUN npm i
RUN npm run build

FROM node:21-alpine3.18
WORKDIR /home/app
COPY --from=builder /home/build/build /home/app/build
COPY --from=builder /home/build/server.js /home/app/server.js
COPY --from=builder /home/build/package.json /home/app/package.json
RUN npm i express 
CMD ["node", "server.js"]
