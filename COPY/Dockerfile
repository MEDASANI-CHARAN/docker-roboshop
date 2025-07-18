FROM run:v1
RUN rm -rf /usr/share/nginx/html/index.html
COPY index.html /usr/share/nginx/html/index.html
CMD ["nginx", "-g", "daemon off;"]