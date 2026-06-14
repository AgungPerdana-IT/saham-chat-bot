#!/bin/bash
# ── Deploy di VPS (tanpa ngrok) ──────────────────────────────────────────
set -e

if [ ! -f .env ]; then
  echo "❌  File .env tidak ditemukan."
  exit 1
fi

echo "🚀  Starting chatbot saham (VPS mode, no ngrok)..."
docker compose up -d        # tanpa --profile local → ngrok tidak ikut naik

echo ""
echo "✅  Service aktif:"
echo "    n8n   → http://$(hostname -I | awk '{print $1}'):5678"
echo "    Redis → localhost:6379 (internal only)"
echo ""
echo "⚠️   Pastikan WEBHOOK_URL di .env sudah diset ke domain/IP VPS."