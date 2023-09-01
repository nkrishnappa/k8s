# Create a Deployment to rollout ReplicaSet
kubectl apply -f deployment.yaml

kubectl get deployment
kubectl get deploy
kubectl get replicaset
kubectl get rs
kubectl describe deployment <DeploymentName>

# Declare the new state of the Pods
kubectl set image <DeploymentName> nginx=nginx:latest
kubectl rollout status <DeploymentName>

kubectl edit <DeploymentName>

# Rollback to earlier deployment revision
kubectl rollout history <DeploymentName>
kubectl rollout undo <DeploymentName>

# Scaling a Deployment
kubectl scale <DeploymentName> --replicas=10
kubectl autoscale <DeploymentName> --min=10 --max=15 --cpu-percent=80

kubectl set resources <DeploymentName> -c=nginx --limits=cpu=200m,memory=512Mi