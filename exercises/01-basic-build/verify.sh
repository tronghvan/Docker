#!/bin/bash
# verify.sh cho bài 01-basic-build
# Chạy độc lập: cd exercises/01-basic-build && bash verify.sh

set -e

IMAGE_NAME="exercise01-basic-$RANDOM"

echo "[1/3] Đang build image..."
docker build -t "$IMAGE_NAME" .

echo "[2/3] Đang chạy container..."
OUTPUT=$(docker run --rm "$IMAGE_NAME")
echo "Output nhận được: $OUTPUT"

echo "[3/3] Kiểm tra output..."
docker rmi "$IMAGE_NAME" > /dev/null 2>&1 || true

if [[ "$OUTPUT" == *"Hello"* ]]; then
  echo "-> Output đúng, chứa từ 'Hello'"
  exit 0
else
  echo "-> Output KHÔNG chứa từ 'Hello'. Kiểm tra lại app.py hoặc CMD trong Dockerfile."
  exit 1
fi
