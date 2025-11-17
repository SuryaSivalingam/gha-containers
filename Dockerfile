FROM node:20

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME mongocluster
ENV MONGODB_CLUSTER_ADDRESS mongocluster.j71hj9f.mongodb.net
ENV MONGODB_USERNAME sudharshansurya007_db_user
ENV MONGODB_PASSWORD hrgYBwZZV9MYkmL3

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]