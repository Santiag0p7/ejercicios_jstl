# =============================================================
# Stage 1 - BUILD (Maven + JDK 17)
# Compila/empaqueta el webapp "exploded" como target/ROOT.war
# =============================================================
FROM maven:3.9.9-eclipse-temurin-17 AS build

WORKDIR /app

# Copia primero el pom para cachear la descarga de dependencias
COPY pom.xml .
RUN mvn -B -q dependency:go-offline

# Copia el resto del codigo (index.jsp, ejercicios/, WEB-INF, etc.)
COPY . .
RUN mvn -B clean package -DskipTests

# =============================================================
# Stage 2 - RUN (Tomcat 9 + JDK 17)
# Tomcat 9 usa javax.servlet.*, requisito de jstl-1.2.jar
# =============================================================
FROM tomcat:9.0-jdk17-temurin

# Limpia las apps de ejemplo y despliega el WAR en el contexto raiz
RUN rm -rf /usr/local/tomcat/webapps/*
COPY --from=build /app/target/ROOT.war /usr/local/tomcat/webapps/ROOT.war

# Render inyecta $PORT (por defecto 10000) y hay que enlazar ahi
ENV PORT=8080
EXPOSE 8080

# Reescribe el puerto del conector HTTP de Tomcat con el de Render y arranca
CMD sed -i "s/port=\"8080\"/port=\"${PORT}\"/" /usr/local/tomcat/conf/server.xml && exec catalina.sh run
