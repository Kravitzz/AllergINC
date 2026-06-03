# Estado del flujo de Superpowers

Este documento registra en qué punto exacto del proceso de Superpowers estamos,
para poder reanudar sin perder contexto al cambiar de entorno (chat web → Claude
Code). La "memoria" del proyecto son estos documentos, no ninguna sesión concreta.

Fase global: **brainstorming (diseño)**. Aún NO se ha pasado a plan de
implementación ni a código.

## Checklist de brainstorming

| # | Paso | Estado |
|---|------|--------|
| 1 | Explorar contexto del proyecto | Hecho |
| 2 | Ofrecer companion visual | Hecho (aceptado) |
| 3 | Preguntas de aclaración | Parcial (dirección de la app definida; faltan detalles de Perfil/Escaneo/Mapa) |
| 4 | Proponer 2-3 enfoques | Hecho para la pantalla principal (opciones A/B/C) |
| 5 | Presentar diseño y aprobar por secciones | **EN CURSO** (pantalla principal aprobada; faltan Perfil, Escaneo, Mapa grande) |
| 6 | Escribir spec de diseño | Parcial (`docs/superpowers/specs/2026-06-03-diseno-inicial-design.md`) |
| 7 | Auto-revisión de la spec | Pendiente (cuando el diseño esté completo) |
| 8 | Revisión de la spec por el usuario | Pendiente |
| 9 | Pasar a writing-plans (plan de implementación) | Pendiente |

## Dónde retomar exactamente

Estamos en el **paso 5**, diseñando pantalla a pantalla. La siguiente pantalla a
diseñar es **Perfil** (subsistema A), con el comando `/pantalla Perfil`.

Secuencia restante hasta empezar a programar:
1. Diseñar Perfil, Escaneo y Mapa grande (paso 5, una a una).
2. Completar la spec con esas pantallas (paso 6).
3. Auto-revisión + revisión tuya de la spec (pasos 7-8).
4. Solo entonces, generar el plan de implementación (paso 9, writing-plans).
   Antes de ese punto no se escribe código de la app.

## Requisito para continuar el flujo en Claude Code

Para usar el flujo de Superpowers tal cual en Claude Code, ten instalado el plugin
de Superpowers en ese entorno (igual que en el repo del juego). Si no está, el
proceso se puede seguir igualmente leyendo esta spec, pero sin los comandos del
plugin.

## Regla de continuidad

Nada vive solo en una conversación. Antes de cerrar cualquier sesión se ejecuta
`/cierre`, que vuelca el estado a `HANDOVER.md`. Al abrir, `/inicio` lo recupera.
Mientras el repositorio exista y esté commiteado, no se pierde ningún detalle.
