


# this is our nginx deployment dockerfile

FROM nginx:alpine
RUN apt-get update
RUN apt-get install nginx -y
LABEL description="This is nginx deployment"
COPY index.html /var/www/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

