

# Use an official Python runtime as a parent image
FROM nginx:latest
COPY index.html /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]

#Successfully built 183f67108ffe
#Successfully tagged nginx:latest
#Creating container…
#Container Id: db77d90f3f9405ead1a731e4442c8f568b39852ddd182c38a7de36754ec935e4
#Container name: 'gcontainer'
#Starting container 'gcontainer'
#'gcontainer Dockerfile: Dockerfile' has been deployed successfully.
