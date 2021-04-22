FROM openjdk:8-alpine

COPY target/uberjar/cljcalc.jar /cljcalc/app.jar

EXPOSE 3000

CMD ["java", "-jar", "/cljcalc/app.jar"]
