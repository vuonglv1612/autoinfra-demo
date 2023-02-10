# production stage
FROM nginx:1.17.5-alpine
COPY index.html /usr/share/nginx/html/.
COPY nginx.conf /etc/nginx/conf.d/site.conf
CMD ["nginx", "-g", "daemon off;"]