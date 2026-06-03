---
name: session-bootstrap
description: Al inicio de una sesión de trabajo en la app de alérgenos, carga el contexto mínimo y reporta dónde estamos. Usar SIEMPRE como primer comando de la sesión. Reemplaza la lectura manual de todo el proyecto.
---

# Arranque de sesión — App de alérgenos

Ejecuta este protocolo SIN pedir confirmación entre pasos. Máximo 4 tool calls.

## Protocolo

1. **Read** `HANDOVER.md` (raíz). Fuente principal del estado actual.
2. **Read** `CLAUDE.md` (raíz). Reglas operativas permanentes.
3. **Bash** (una sola llamada): `git status --short && echo --- && git log --oneline -5 && echo --- && git branch --show-current`
4. (Opcional, solo si HANDOVER apunta a un archivo concreto del próximo paso) **Read** ese archivo.

## Reporta en este formato exacto

```
Contexto cargado — App de alérgenos

Última sesión: [fecha del HANDOVER]
Branch: [actual]
Último commit: [hash + mensaje corto]
Cambios sin commit: [conteo + 1 línea, o "ninguno"]

Fase actual: [del HANDOVER "Estado del proyecto"]
Próximo paso: [del HANDOVER "Próximo paso concreto", una frase]

Decisiones cerradas activas: [conteo de bullets de "Decisiones cerradas"]
Bloqueos: [del HANDOVER, o "ninguno"]

¿Procedo con el próximo paso o tienes otra prioridad?
```

## Reglas

- NO leas `docs/` enteros. NO leas `disenos/`. Solo HANDOVER + CLAUDE + git.
- NO ejecutes acciones del próximo paso todavía: espera confirmación.
- Si `HANDOVER.md` no existe, dilo y pide ejecutar la skill `session-end` al cerrar la próxima vez.
- Responde en español, conciso.
