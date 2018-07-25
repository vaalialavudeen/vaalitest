#use a node base image
FROM node:7

#maintainer details 
LABEL maintainer "lakshmanan17792@gmail.com"

#set healthcheckuup

HEALTHCHECK --intervals=5s \
--timeouts=5s \
CMD curl -f http://127.0.0.1:8000 || exit 1

# set the image expose port
EXPOSE 8000

