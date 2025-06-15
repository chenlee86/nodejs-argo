FROM node:slim

WORKDIR /app

COPY . .

EXPOSE 8080

RUN apt update -y &&\
    chmod +x index.js &&\
    npm install 
    
CMD ["node", "index.js"]
