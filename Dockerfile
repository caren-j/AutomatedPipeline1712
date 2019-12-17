ARG version="18.04"
FROM ubuntu:$version
RUN echo "Version -->"$version
ARG licensekey="10..2000"
#First Dockerfile...
LABEL MAINTAINER cj@apps.com
RUN mkdir /code
COPY Sample.sh /code/Sample.sh
COPY testfile /code/testfile
RUN chmod +x /code/Sample.sh
RUN echo "Image is built at `data`"
RUN echo "License key "$licensekey
#ENTRYPOINT ["sh","/code/Sample.sh"]
#CMD ["/code/testfile"]
CMD echo "Container being built"
CMD env
