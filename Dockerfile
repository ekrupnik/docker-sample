# This is a basic Dockerfile
FROM ubuntu
MAINTAINER "Eric Krupnik"

CMD echo "This is a Dockerfile used for testing multiple tags"
CMD echo "This is another line"

COPY . /repo
CMD ["ls","repo"]
