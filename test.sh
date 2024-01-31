docker build -t showpune/buildkit-test:rootless . --push

#docker build -t showpune/buildkit-test:client . -f Dockerfile.client --push

docker build -t showpune/buildkit-test:root . -f Dockerfileroot --push
