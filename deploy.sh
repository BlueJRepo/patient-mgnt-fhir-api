echo "%>mvn clean package"
mvn clean package

echo "%>docker build -t adha/patient-mgnt-fhir-api:v1.0.0 ."
docker build -t adha/patient-mgnt-fhir-api:v1.0.0 .

echo "%>kubectl delete deploy patient-mgnt-fhir-api-deployment"
kubectl delete deploy patient-mgnt-fhir-api-deployment

echo "%>kubectl delete svc patient-mgnt-fhir-api-service"
kubectl delete svc patient-mgnt-fhir-api-service

echo "%>kubectl apply -f k8s/local.yaml"
kubectl apply -f k8s/local.yaml

echo "%>kubectl get all"
kubectl get all