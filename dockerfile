FROM java:8
ADD chat-0.0.1-SNAPSHOT.jar chat.jar
RUN bash -c 'touch /chat.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/chat.jar"]