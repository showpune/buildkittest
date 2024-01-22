kubectl delete -f ./.certs/buildkit-client-certs.yaml 
kubectl delete -f ./.certs/buildkit-daemon-certs.yaml 
kubectl delete -f deployment+service.privileged.yaml 
rm -rf .certs
./create-certs.sh buildkitd-legion
kubectl apply -f .certs/buildkit-client-certs.yaml 
kubectl apply -f .certs/buildkit-daemon-certs.yaml 
kubectl apply -f deployment+service.privileged.yaml 

