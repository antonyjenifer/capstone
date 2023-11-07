FROM node:16 as builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm  build

FROM nginx:latest 
WORKDIR /usr/share/nginx/html 
RUN rm -rf ./*
COPY --from=builder /app/build .
CMD ["nginx", "-g", "daemon off;"]

