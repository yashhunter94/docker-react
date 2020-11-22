FROM node:alpine
WORKDIR '/app'
COPY package*.json /C/Users/yash/frontend
RUN npm install
COPY . .
RUN npm run build

FROM nginx
EXPOSE 80
<<<<<<< HEAD
COPY --from=0 /app/build /usr/share/nginx/html
=======
COPY --from=0 /app/build /usr/share/nginx/html
>>>>>>> b68e1c58d6e0d92efafca8d1a2518fe210cc12d0
