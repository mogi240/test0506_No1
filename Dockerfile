FROM ubuntu
COPY ./install.sh /
RUN chmod 755 /install.sh
RUN /install.sh
COPY ./start.sh /
RUN chmod 755 /start.sh
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
