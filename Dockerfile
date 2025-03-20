FROM openjdk:17-jdk-slim
# Set working directory
WORKDIR /app
# Copy the application JAR
COPY ./target/*.jar app.jar
# Set environment variables
ENV SPRING_DATASOURCE_URL=jdbc:mysql://43.205.214.13:3306/myapplication
ENV SPRING_DATASOURCE_USERNAME=root
ENV SPRING_DATASOURCE_PASSWORD=1234
# Expose port
EXPOSE 8081
# Start the application
ENTRYPOINT ["java", "-jar", "app.jar"]
