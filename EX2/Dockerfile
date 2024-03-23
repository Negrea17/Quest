# Folosim o imagine Java 11 ca bază
FROM openjdk:11-jdk

# Setăm directorul de lucru în container
WORKDIR /usr/src/app

# Copiem fișierul sursă Java în container
COPY Main.java .

# Compilăm aplicația Java
RUN javac Main.java

# Specificăm comanda care va fi rulată la pornirea containerului
CMD ["java", "Main"]
