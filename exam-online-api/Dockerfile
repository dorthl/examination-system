FROM eclipse-temurin:8
RUN mkdir /opt/app
COPY ruoyi-admin/target/exam-online-api.war /opt/app
WORKDIR /opt/app
CMD ["java","-Xms128M","-Xmx256M", "-jar", "exam-online-api.war"]
