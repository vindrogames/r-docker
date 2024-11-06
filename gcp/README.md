gcloud auth configure-docker europe-southwest1-docker.pkg.dev

docker tag 3be49e168bca europe-southwest1-docker.pkg.dev/gcp-000054-644695/fgimenez-registry/quickstart-image:latest
docker push europe-southwest1-docker.pkg.dev/gcp-000054-644695/fgimenez-registry/quickstart-image:latest