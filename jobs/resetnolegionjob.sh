kubectl delete -f rootless-noproviledge-nolegion-job.yaml
kubectl delete -f rootless-noproviledge-legion-job.yaml
kubectl apply -f rootless-noproviledge-nolegion-job.yaml
kubectl apply -f rootless-noproviledge-legion-job.yaml