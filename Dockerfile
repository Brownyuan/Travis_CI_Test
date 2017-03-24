FROM ubuntu:16.04
RUN apt update && apt install python -y 
RUN mkdir /home/program
ADD index.html /home/program
WORKDIR /home/program
ENTRYPOINT ["python", "-m", "SimpleHTTPServer"]
