FROM maven:3-jdk-11

WORKDIR /usr/src/app

ENV PORT=8080

EXPOSE 8080

COPY . ./

RUN mvn -DskipTests clean install

CMD [ "./mvnw", "spring-boot:run" ]
