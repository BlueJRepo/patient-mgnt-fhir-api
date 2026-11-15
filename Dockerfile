#FROM openjdk:21 //Deprecated from Docker
FROM eclipse-temurin:21-jdk-alpine
WORKDIR /app
COPY ./target/patient-mgnt-fhir-api-0.0.1.jar /app
EXPOSE 8081
CMD ["java", "-jar", "patient-mgnt-fhir-api-0.0.1.jar"]