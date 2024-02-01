kubectl delete -f rootless-legion-job.yaml
kubectl delete -f rootless-noproviledge-legion-job.yaml
kubectl apply -f rootless-legion-job.yaml
kubectl apply -f rootless-noproviledge-legion-job.yaml