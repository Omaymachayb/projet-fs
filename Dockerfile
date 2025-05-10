# Utilise l'image nginx officielle comme base
FROM nginx

# Créer un utilisateur non privilégié (si nécessaire)
RUN adduser --disabled-password --gecos '' nginxuser

# Copie les fichiers nécessaires dans l'image Docker
COPY ./usr/share/nginx/html /usr/share/nginx/html

# Change l'utilisateur pour que nginx s'exécute avec nginxuser
USER nginxuser

# Expose le port 80
EXPOSE 80
