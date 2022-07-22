docker stop golang_container
docker rm golang_container
docker build -t golang_container .
docker run -d -p 8080:8080 --name golang_container golang_container
