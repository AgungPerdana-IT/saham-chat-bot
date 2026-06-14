#!/bin/bash
# ── Jalankan di lokal (dengan ngrok) ────────────────────────────────────
set -e

if [ ! -f .env ]; then
  echo "❌  File .env tidak ditemukan. Jalankan dulu:"
  echo "    cp .env.example .env  lalu isi nilainya."
  exit 1
fi

echo "🚀  Starting chatbot saham (local + ngrok)..."
docker compose --profile local up -d

echo ""
echo "✅  Semua service jalan:"
echo "    n8n         → http://localhost:5678"
echo "    Redis       → localhost:6379"
echo "    ngrok UI    → http://localhost:4040"
echo ""
echo "📌  Ambil ngrok URL dari http://localhost:4040"
echo "    lalu update WEBHOOK_URL di .env dan restart."