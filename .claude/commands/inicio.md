---
description: Arranca la sesión. Lee el contexto mínimo y reporta dónde estamos.
allowed-tools: Read, Bash(git status*), Bash(git log*), Bash(git branch*)
---

# /inicio — Arranque de sesión (AllergINC)

Ejecuta SIN pedir confirmación entre pasos. Máximo 4 tool calls.

1. Lee `HANDOVER.md` (raíz). Fuente principal del estado actual.
2. Lee `CLAUDE.md` (raíz). Reglas operativas permanentes.
3. Una sola llamada Bash: `git status --short && echo --- && git log --oneline -5 && echo --- && git branch --show-current`
4. (Opcional, solo si el HANDOVER apunta a un archivo concreto del próximo paso) léelo.

Reporta en este formato exacto:

```
Contexto cargado — AllergINC

Última sesión: [fecha del HANDOVER]
Branch: [actual]
Último commit: [hash + mensaje corto]
Cambios sin commit: [conteo + 1 línea, o "ninguno"]

Fase actual: [del HANDOVER]
Próximo paso: [del HANDOVER, una frase]

Decisiones cerradas activas: [conteo]
Bloqueos: [del HANDOVER, o "ninguno"]

¿Procedo con el próximo paso o tienes otra prioridad?
```

Reglas:
- NO leas `docs/` ni `disenos/` enteros. Solo HANDOVER + CLAUDE + git.
- NO ejecutes el próximo paso todavía: espera confirmación.
- Si no existe `HANDOVER.md`, dilo y pide usar `/cierre` al terminar.
- Responde en español, conciso.
