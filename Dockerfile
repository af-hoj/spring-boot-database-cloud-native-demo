FROM ghcr.io/graalvm/graalvm-community:22 AS builder
WORKDIR /workspace/app

COPY .mvn .mvn
COPY pom.xml mvnw ./
COPY src src

RUN ./mvnw clean -Pnative native:compile -DskipTests


FROM ubuntu:24.04 AS runner

COPY --from=builder /workspace/app/target/database-native /app/

ENTRYPOINT ["./app/database-native"]