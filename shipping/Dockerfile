# this is multi stage buit
FROM alpine as build
WORKDIR /opt/shipping
COPY SRC /opt/shipping
COPY POM.XML /opt/shipping
CMD ["mvn", "--version"]

# run 
FROM openjdk:8-jre-alpine3.9
EXPOSE 8080
WORKDIR /opt/shipping
ENV CART_ENDPOINT=cart:8080
ENV DB_HOST=mysql
COPY --from=build /opt/shipping/target/shipping-1.0.jar shipping.jar
CMD [ "java", "-Xmn256m", "-Xmx768m", "-jar", "shipping.jar" ]