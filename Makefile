build:
	docker build -t hello-world .

kaniko-build:
	docker run --rm \
    -v $(PWD):/workspace \
	-v $(HOME)/.docker/config.json:/kaniko/.docker/config.json \
	--network kaniko-local \
    gcr.io/kaniko-project/executor:v1.20.1 \
	--dockerfile "/workspace/Dockerfile" \
    --destination "registry:5000/hello-world-kaniko" \
	--insecure --skip-tls-verify


