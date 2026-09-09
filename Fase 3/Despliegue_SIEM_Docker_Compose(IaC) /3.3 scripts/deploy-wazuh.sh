#!/usr/bin/env bash
# deploy-wazuh.sh — Despliegue del stack SIEM en ~5 minutos
set -euo pipefail

echo "[*] Verificando Docker..."
docker compose version >/dev/null || { echo "[!] Docker Compose no instalado"; exit 1; }

echo "[*] Levantando Wazuh stack..."
cd "$(dirname "$0")/../docker"
docker compose pull
docker compose up -d

echo "[*] Esperando healthcheck del manager..."
until curl -sk https://localhost:55000/ | grep -q Wazuh; do sleep 5; done

echo "[✓] SIEM listo. Dashboard: https://localhost (admin / ${DASHBOARD_PASSWORD})"
echo "[*] Registra agentes con el comando que genera el dashboard: Groups > Agents > Deploy new agent"
