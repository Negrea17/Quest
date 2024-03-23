Pentru a construi imaginea Docker local, urmați acești pași:

Clonează acest depozit pe mașina locală.

Navighează în directorul care conține fișierul Dockerfile și codul sursă Java.

Deschide un terminal sau o fereastră de comandă.

Rulează următoarea comandă pentru a construi imaginea Docker:
docker build -t my-java-app:latest .
Odată ce imaginea Docker este construită, poți rula aplicația Dockerizată folosind următoarea comandă:
docker run my-java-app:latest


# Tag-uiți imaginea locală cu URL-ul registry-ului și numele repository-ului
docker tag my-java-app:latest username/my-java-app:latest

# Încărcați imaginea în Docker Hub
docker push username/my-java-app:latest

name: Docker Build and Push

on:
  push:
    branches:
      - main

jobs:
  build-and-push:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout repository
        uses: actions/checkout@v2

      - name: Login to Docker Hub
        uses: docker/login-action@v2
        with:
          username: ${{ secrets.DOCKERHUB_USERNAME }}
          password: ${{ secrets.DOCKERHUB_PASSWORD }}

      - name: Build Docker image
        run: docker build -t my-java-app:latest .

      - name: Tag Docker image
        run: docker tag my-java-app:latest ${{ secrets.DOCKERHUB_USERNAME }}/my-java-app:latest

      - name: Push Docker image
        run: docker push ${{ secrets.DOCKERHUB_USERNAME }}/my-java-app:latest
