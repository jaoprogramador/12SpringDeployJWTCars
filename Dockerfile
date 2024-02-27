FROM maven:3.8.3-openjdk:11 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

FROM openjdk:11
COPY --from=build /app/target/12SpringDeployJWTCars 0.0.1-SNAPSHOT.jar /myapp.jar
EXPOSE 8080
CMD ["java", "-jar", "/12SpringDeployJWTCars 0.0.1-SNAPSHOT.jar"]