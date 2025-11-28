#setting base image for dockerfile 
FROM openjdk:26-ea-trixie
#setting working directory where this image should be under /roopa path
WORKDIR /roopa
#copy all files under this /roopa path
COPY test.java /roopa/
#this java script run in compilation mode
RUN javac test.java
#it simultaneosly works while RUN dockerimage to create container and this script run java so we written java
CMD ["java" , "test"]
