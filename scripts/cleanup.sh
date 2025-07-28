#!/usr/bin/env bash
set -euo pipefail

echo "[*] Cleaning up Docker resources..."
docker image prune -f
docker container prune -f
docker network prune -f

echo "[✔] Cleanup complete."
