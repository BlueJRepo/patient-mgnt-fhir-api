#FROM openjdk:21 //Deprecated from Docker
FROM eclipse-temurin:21-jdk-alpine
WORKDIR /app
COPY ./target/patient-mgnt-fhir-api-0.0.1-SNAPSHOT.jar /app
EXPOSE 8080
CMD ["java", "-jar", "patient-mgnt-fhir-api-0.0.1-SNAPSHOT.jar"]