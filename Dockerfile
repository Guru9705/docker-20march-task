FROM maven:3.9.8-eclipse-temurin-21
WORKDIR /app
COPY . /app
RUN mvn clean package -DskipTests
EXPOSE 8080
CMD ["java","-jar","target/MyWebApp.war"]