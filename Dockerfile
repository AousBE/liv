FROM nginx:1.17.1-alpine

COPY ./dist/livraison_c /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
