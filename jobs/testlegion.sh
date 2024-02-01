cd ..
docker build -t showpune/buildkit-test:rootless . --push
cd jobs
./resetjob.sh
kubectl apply -f rootless-noproviledge-legion-job.yaml
sleep 1
kubectl get pods -l job-name=rootless-noproviledge-legion-job
pod_name=$(kubectl get pods -l job-name=rootless-noproviledge-legion-job -o jsonpath="{.items[0].metadata.name}")
echo $pod_name
sleep 5
echo "kubectl logs $pod_name"
kubectl logs $pod_name -f