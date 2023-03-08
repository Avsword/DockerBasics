FROM openjdk:8-jdk-alpine


EXPOSE 8080
COPY . .

RUN apk update -y && apk add maven -y 
RUN apk update && apk add dos2unix -y 

CMD ["sh","./run.sh"]


