---
description: Cierra la sesión. Reescribe HANDOVER.md con estado y próximo paso, y propone commit.
allowed-tools: Read, Write, Bash(git status*), Bash(git log*), Bash(git diff*), Bash(git add *), Bash(git commit -m *)
---

# /cierre — Cierre de sesión (AllergINC)

Ejecuta en orden SIN pedir confirmación entre pasos. Máximo 6 tool calls.

1. Una sola llamada Bash: `git status --short && echo --- && git log --oneline -5`
2. Sobrescribe `HANDOVER.md` (raíz) con este formato EXACTO:

```
# HANDOVER — AllergINC

**Última sesión:** [YYYY-MM-DD]
**Branch:** [git branch --show-current]
**Último commit:** `[hash corto] [mensaje]`

---

## Estado del proyecto
[2-3 frases sobre la fase actual y qué funciona]

## Hecho en la sesión actual ([fecha])
- [bullet por cada cambio significativo]

## Pantallas / módulos en estado
- [Pantalla o módulo] — [diseñado / en código / a medias / pendiente]

## Decisiones cerradas (no reabrir)
[copiar del anterior + añadir nuevas]
- Alcance inicial = 14 alérgenos del Reglamento UE 1169/2011.
- Construcción por fases: A+B antes que C+D.
- Pila: React Native + Expo / Cloudflare D1 / IA de escaneo por decidir.

## Riesgos y avisos vivos
- Fiabilidad de datos = seguridad del usuario. Ausencia de dato nunca es "apto".
- [otros que surjan]

## Próximo paso concreto
**[Una frase con archivo y acción]**
1. [Sub-paso 1]
2. [Sub-paso 2]

## Pendientes
- [ ] [tareas]

## Comando para reanudar
/inicio
```

3. Muestra `git diff HANDOVER.md` (primeras 40 líneas).
4. Pregunta: "¿Hago commit de esta sesión? Dime el tipo (feat/fix/docs/chore)."
5. Si confirma: propón mensaje convencional y `git add -A && git commit -m "..."`. Recuerda hacer `git push`.
6. Termina con: "Sesión cerrada. Próxima vez: /inicio".

Reglas:
- NO leas `docs/` enteros: infiere de la sesión y del HANDOVER anterior.
- "Decisiones cerradas" y "Riesgos vivos" SIEMPRE se copian y se añade lo nuevo; nunca se vacían.
- Responde en español, conciso.
