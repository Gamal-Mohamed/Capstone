#First step to install the latest (new) version of nginx (or any new version as an exmple for upgrade)

FROM nginx:1.19

#Second step to replace the default index page

COPY ./index.html /usr/share/nginx/html/index.html

#Installing packages and linting code
RUN pip3 install --upgrade pip && pip3 install Flask && pip3 install pylint

#Exposing ports
#EXPOSE 8080
EXPOSE 80