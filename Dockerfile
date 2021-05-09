FROM openjdk:8-alpine
COPY . ~/wifi-qrcode-generator
WORKDIR ~/wifi-qrcode-generator
RUN ./gradlew installDist
ENTRYPOINT ["./build/install/wifi-qrcode-generator/bin/wifi-qrcode-generator"]
