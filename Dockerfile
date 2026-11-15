#FROM openjdk:21 //Deprecated from Docker
FROM eclipse-temurin:21-jdk-alpine
WORKDIR /app
COPY ./target/*.jar /app
CMD ["java", "-jar", "patient-mgnt-fhir-api.jar"]

