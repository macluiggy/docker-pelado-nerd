FROM node:14-alpine3.15

WORKDIR /app
# Copy the app to the container: copia todo lo de WORKDIR al contenedor
COPY . .
RUN yarn install --production
# especifica el comando que se ejecutara en el contenedor
# entry point tambien se puede usar, la diferncia es que como el nombre lo indica
# se pasa un comando inicial y este puede aceptar argumentos luego del entry point
CMD ["node", "/app/index.js"]