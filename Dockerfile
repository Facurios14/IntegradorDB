# Imagen base
FROM node:20

# Carpeta de trabajo en el contenedor
WORKDIR /usr/src/app

# Copiar package.json
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto del proyecto
COPY . .

# Exponer el puerto donde corre tu API
EXPOSE 3000

# Comando para ejecutar el servidor
CMD ["npm", "start"]
