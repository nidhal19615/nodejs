# Utilisez une image parente Node.js officielle

FROM node:14


# Définissez le répertoire de travail dans le conteneur

WORKDIR /app


# Copiez package.json et package-lock.json dans le répertoire de travail

COPY package*.json ./


# Installez les dépendances de l'application

RUN npm install


# Copiez le reste du code de l'application dans le répertoire de travail

COPY . .


# Exposez un port (si votre application écoute sur un port spécifique)

EXPOSE 3000


# Définissez la commande pour exécuter votre application

CMD [ "npm", "start" ]

