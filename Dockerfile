FROM nginx:1.17.1-alpine

WORKDIR /usr/local/app

COPY ./ /usr/local/app/

FROM nginx:latest

COPY --from=build /usr/local/app/dist/crudtuto-Front /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
