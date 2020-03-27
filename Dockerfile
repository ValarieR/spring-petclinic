FROM maven:3.5-jdk-8-alpine
WORKDIR /app
COPY . /app
RUN mvn clean install
CMD ["java","-jar","/target.jar"]