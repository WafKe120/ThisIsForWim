#Gebruik een basisimage van nginx, standaard op Alpine Linux#
FROM nginx:alpine

#Kopieer de inhoud van de html-directory naar de root van nginx#
COPY html /usr/share/nginx/html

#Maak een buildtime.txt bestand aan met de huidige datum en tijd#
RUN date -u > /usr/share/nginx/html/buildtime.txt

#Expose poort 81#
EXPOSE 81

#Start nginx in de voorgrond#
CMD ["nginx", "-g", "daemon off;"]