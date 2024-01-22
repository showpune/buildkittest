FROM moby/buildkit:master-rootless

WORKDIR /workspace

COPY python/dockertest /workspace/Dockerfile
COPY python/requirements.txt /workspace/requirements.txt

ENV BUILDKITD_FLAGS --oci-worker-no-process-sandbox

#USER root

#ENTRYPOINT [ "buildctl-daemonless.sh","build","--frontend","dockerfile.v0","--local","context=/workspace","--local","dockerfile=/workspace","--output", "type=image,name=showpune/buildkitout,push=true" ]
ENTRYPOINT [ "buildctl-daemonless.sh","build","--frontend","dockerfile.v0","--local","context=/workspace","--local","dockerfile=/workspace" ]