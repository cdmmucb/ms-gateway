FROM azul/zulu-openjdk:11.0.10 as test
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

ENV SPRING_PROFILE local
ENV SERVER_PORT 9091
ENV EUREKA_URI http://localhost:8761/eureka
ENTRYPOINT [ "java","-cp","app:app/lib/*","/com.example.msgateway.MsGateWayApplication" ]

#CMD ["java","-cp","app:app/lib/*","com.example.demo.MsSchoolApplication"]



