#!/usr/bin/env bash
set -euo pipefail

IMAGE="yourhubusername/myapp:${GIT_COMMIT:-latest}"

echo "[+] Building Docker image..."
docker build -t $IMAGE .

echo "[+] Pushing Docker image to DockerHub..."
docker push $IMAGE
