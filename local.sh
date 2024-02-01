rm -rf workspace
mkdir workspace

cp python/dockertest workspace/Dockerfile
cp python/requirements.txt workspace/requirements.txt

BUILDKITD_FLAGS="--oci-worker-no-process-sandbox"


./aca-daemonless.sh build --frontend dockerfile.v0 --local context=workspace --local dockerfile=workspace --output type=image,name=showpune/buildkitout,push=true
