FROM maven:3-jdk-11

RUN useradd -r -g root user

WORKDIR /home/user/

ENV PORT=8080

EXPOSE 8080

COPY . ./

RUN mvn -DskipTests clean install

RUN chmod -R 770 /home/user/

USER user

CMD [ "./mvnw", "spring-boot:run" ]
