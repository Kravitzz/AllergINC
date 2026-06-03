---
name: session-end
description: Cierra la sesión de la app de alérgenos actualizando HANDOVER.md con estado, decisiones y próximo paso. Usar al terminar de trabajar o antes de cerrar el editor.
---

# Cierre de sesión — App de alérgenos

Ejecuta en orden SIN pedir confirmación entre pasos. Máximo 6 tool calls.

## Protocolo

1. **Bash** (una sola llamada): `git status --short && echo --- && git log --oneline -5`
2. **Sobrescribe** `HANDOVER.md` (raíz) con este formato EXACTO:

```
# HANDOVER — App de alérgenos

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

[copiar del HANDOVER anterior + añadir nuevas]
- Alcance inicial = 14 alérgenos del Reglamento UE 1169/2011.
- Construcción por fases: A+B antes que C+D.
- Pila: React Native + Expo / Cloudflare D1 / IA de escaneo por decidir.

## Riesgos y avisos vivos

- Fiabilidad de datos = seguridad del usuario (anafilaxia). No relajar.
- [otros que surjan]

## Próximo paso concreto

**[Una frase con archivo y acción]**

1. [Sub-paso 1]
2. [Sub-paso 2]

## Pendientes

- [ ] [tareas: pruebas, commits, decisiones]

## Comando para reanudar

Ejecuta la skill `session-bootstrap`.
```

3. Muestra `git diff HANDOVER.md` (primeras 40 líneas).
4. Pregunta: "¿Hago commit de esta sesión? Dime el tipo principal (feat/fix/docs/chore)."
5. Si confirma: propón mensaje convencional y ejecuta `git add -A && git commit -m "..."`. Recuerda al usuario hacer `git push`.
6. Termina con: "Sesión cerrada. Próxima vez: ejecuta session-bootstrap."

## Reglas

- NO leas `docs/` enteros para redactar el HANDOVER: infiere de la sesión y del HANDOVER anterior.
- "Decisiones cerradas" y "Riesgos vivos" SIEMPRE se copian del anterior y se añade lo nuevo; nunca se vacían.
- Responde en español, conciso.
