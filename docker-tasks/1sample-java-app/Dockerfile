#base image
FROM openjdk:8-jdk
#installation and updation of maven
RUN apt-get update
RUN apt-get install -y maven
#set working directory to /app
WORKDIR /app
#copying code from project to Dockerfile
COPY .mvn/ .mvn
COPY mvnw pom.xml ./
#dependencies were install into image
RUN ./mvnw dependency:go-offline
#add our source code into the image.
COPY src ./src
#port for localhost:3000
EXPOSE 3000
#to build the project we used maven : which is (Project Management tool)
#RUN mvn clean package
CMD ["./mvnw", "spring-boot:run"]
