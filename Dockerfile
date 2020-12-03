FROM node:12.18.0

ENV NODE_ENV=production

# Crear archivo para hacer mas fácil la ejecución de archivos
WORKDIR /app

# Que archivo copiar dentro de la imágen
# Segundo parametro a donde lo quiero copiar
# Copiaremos los siguientes archivos dentro de nuestro directorio de /app anteriormente creado.

COPY ["package.json", "package-lock.json*", "./"]

# Una vez copiado, ya podemo instalar las dependencias en nuestro container.
RUN npm install

COPY . .

CMD ["node", "."]