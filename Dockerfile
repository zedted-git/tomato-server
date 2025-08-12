FROM ubuntu:20.04

RUN apt-get update && apt-get install -y libglib2.0-0 libgtk-3-0 libnss3 libx11-6 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxtst6 libnss3 libasound2

WORKDIR /app

COPY ./server/ .

RUN chmod +x server_v1.x86_64

CMD ["./server_v1.x86_64"]
