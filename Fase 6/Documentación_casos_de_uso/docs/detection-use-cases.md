## CU-001: Ejecución de Mimikatz (T1003.001)

**Fecha:** 2026-09-08 | **Severidad:** Alta | **Estado:** ✅ Detectado

### Táctica MITRE
Credential Access → T1003.001 (OS Credential Dumping: LSASS Memory)

### Ejecución
```powershell
# En VICTIM-WIN11 (192.168.10.20)
Invoke-AtomicTest T1003.001 -TestNumbers 1
