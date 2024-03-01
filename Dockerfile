FROM amazoncorretto:11-alpine-jdk   //de que imagen partimos
MAINTAINER JAO                      //quien es el dueño
COPY target/12SpringDeployJWTCars-0.0.1-SNAPSHOT.jar JWTCars-App.jar   //va a copiar el empaquetado github
ENTRYPOINT ["java","-jar","/JWTCars-App.jar"]  //es la instruccion que se va a ejecutar primero
  
