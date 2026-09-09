# 🛡️ SOC-Lab

Entorno aislado y reproducible que simula un SOC real: telemetría (EDR/Windows events),
ingesta (Wazuh), análisis y respuesta (MITRE ATT&CK, playbooks).

## 🎯 Objetivos
- [x] Centralizar eventos de endpoint en un SIEM (Wazuh)
- [x] Detectar técnicas MITRE ATT&CK (T1059.001, T1003.001, etc.)
- [x] Documentar casos de uso con evidencia

## 🗺️ Topología de red
![Topología](docs/network-topology.png)

| Segmento | Subred | Rol | Máquina |
|---|---|---|---|
| Red objetivo | 192.168.10.0/24 | Endpoint víctima + sensor | Windows 11 (Sysmon + Wazuh Agent) |
| Monitoreo | 192.168.20.0/24 | SIEM central | Ubuntu Server + Wazuh (Docker) |
| Atacante | 192.168.30.0/24 | Red team simulado | Kali Linux |

## 🚀 Inicio rápido
1. `cd docker && docker compose up -d` (despliega Wazuh)
2. En Windows: `.\agents\sysmon\deploy-sysmon.ps1`
3. Ejecuta `simulation/atomic-tests.ps1` y verifica alertas
4. Consulta `docs/detection-use-cases.md` para casos resueltos

## 📋 Requisitos
Ver [docs/requirements.md](docs/requirements.md)
