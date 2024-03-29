FROM moby/buildkit:rootless

WORKDIR /workspace

COPY python/dockertest /workspace/Dockerfile
COPY python/requirements.txt /workspace/requirements.txt

COPY aca-daemonless.sh /usr/bin/

ENV BUILDKITD_FLAGS --oci-worker-no-process-sandbox

#USER root

#ENTRYPOINT [ "aca-daemonless.sh","build","--frontend","dockerfile.v0","--local","context=/workspace","--local","dockerfile=/workspace","--output", "type=image,name=showpune/buildkitout,push=true" ]
ENTRYPOINT [ "aca-daemonless.sh","build","--frontend","dockerfile.v0","--local","context=/workspace","--local","dockerfile=/workspace"]
#ENTRYPOINT [ "buildctl-daemonless.sh","build","--frontend","dockerfile.v0","--local","context=/workspace","--local","dockerfile=/workspace" ]