
---

## 📌 Fase 7: Playbooks de respuesta — `playbooks/`

Plantilla en `incident-response-template.md`:

```markdown
# Playbook IR-001: Credential Dumping
## Detección
- Fuente: Wazuh rule 100100 | Sysmon EventID 10
## Contención (automatable → SOAR-ready)
- [ ] `docker exec wazuh-manager /var/ossec/active-response/bin/...` (bloqueo IP)
- [ ] Aislar host vía agent de red (si existe)
## Erradicación / Recuperación / Lecciones
