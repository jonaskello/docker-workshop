FROM node:latest

RUN mkdir /app
WORKDIR /app
RUN cd /app
ADD index.js /app
ADD package.json /app
ADD yarn.lock /app
RUN yarn install

#ENV PGHOST=localhost 
ENV PGHOST=host.docker.internal
ENV PGPORT=3500
ENV PGUSER=postgres
ENV PGPASSWORD=olle


#ENTRYPOINT ["node", "index.js"]
CMD ["node", "index.js"]
#CMD ["sleep", "9999999999"]
