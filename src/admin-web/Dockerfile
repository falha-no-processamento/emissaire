# Baixando imagem flutter
FROM cirrusci/flutter:stable AS build-env

# Gerando build do émissaire web
RUN mkdir /app/
COPY . /app/
WORKDIR /app/
RUN flutter build web

# Stage 2 - Create the run-time image
FROM nginx
COPY --from=build-env /app/build/web /usr/share/nginx/html

# Comando para gerar a imagem docker: docker build -t emissaire-web-server .
# Comando para rodar a imagem docker: docker run -d -p 1200:80 --name emissaire-web emissaire-web-server
# Acessar émissaire-web: http://localhost:1200/#/