FROM nginx:latest 

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Copie vos fichiers statiques dans le répertoire par défaut d'NGINX 
COPY . /usr/share/nginx/html 

# Expose le port 80 pour servir l'application 
EXPOSE 80 

# Définir l'entrypoint qui va exécuter le script avant nginx
ENTRYPOINT ["/entrypoint.sh"]

# Démarre NGINX (sera passé comme $@ à l'entrypoint)
CMD ["nginx", "-g", "daemon off;"]