# CLAUDE.md — Contexto del proyecto

> **Para Claude:** lee SOLO este archivo al iniciar una sesión. Resume todo el
> estado del proyecto. No hace falta releer el historial del chat ni todos los
> documentos. Si necesitas detalle de una decisión concreta, abre el documento
> enlazado correspondiente. Responde siempre en español, conciso, con la menor
> cantidad de términos en inglés posible (y si los usas, traduce el primero entre
> paréntesis).

## Qué es el proyecto

App móvil (Android + iOS) que avisa a personas con alergias e intolerancias
alimentarias de la presencia de sus alérgenos en menús de restaurantes.

## Objetivo de cada función (4 subsistemas)

| # | Subsistema | Estado |
|---|------------|--------|
| A | Perfil de usuario: registro de alergias e intolerancias | Pendiente |
| B | Recordatorios periódicos de medicación/suplementos | Pendiente |
| C | Repositorio de menús de restaurantes (filtrados por perfil) | Pendiente |
| D | Escaneo de cartas con IA (cámara → OCR → comparar con perfil) | Pendiente |

**Orden de construcción acordado:** primero A + B (autónomos, sin datos externos
ni IA). Después C y D. El cuello de botella es C (datos reales de menús).

## Decisión legal clave (define el alcance inicial)

Empezamos SOLO con los **14 alérgenos** de declaración obligatoria según el
Reglamento UE 1169/2011 (gluten, crustáceos, huevos, pescado, cacahuetes, soja,
lácteos, frutos de cáscara, apio, mostaza, sésamo, sulfitos, altramuces,
moluscos). Es información que el restaurante está obligado a tener. Las
intolerancias (lactosa, fructosa, histamina) y la lista completa de ingredientes
NO están reguladas igual → quedan para fases posteriores.

> Aviso de responsabilidad: una app de alérgenos que da información incorrecta es
> un riesgo de seguridad (anafilaxia). Toda decisión de diseño y datos prioriza
> la fiabilidad y avisos claros de "verifica con el restaurante".

## Pila tecnológica acordada (tentativa)

- **App:** React Native + Expo (probar sin publicar).
- **Base de datos:** Cloudflare D1 (vía CLI de Cloudflare, ya disponible).
- **IA (escaneo):** API de reconocimiento por definir (OCR + análisis de
  ingredientes). Pendiente elegir proveedor y evaluar coste por uso.
- **Suscripciones disponibles del usuario:** Claude Pro + CLI de Cloudflare.

## Diseño decidido hasta ahora

**Pantalla principal (versión 1, aprobada).** Híbrido de dos referencias:
- Arriba: saludo "Hola, Marc · ¿Qué vamos a comer hoy?".
- Centro: minimapa con ubicación del usuario y locales cercanos. Pines con color
  según perfil (verde = apto, ámbar = precaución). Botón "Ver mapa" → mapa grande.
- Debajo: lista "Vistos recientemente / Favoritos".
- Barra inferior de 4 botones: Explorar (lupa) → mapa grande · Perfil (persona) ·
  Escanear (centro, resaltado, cámara) · Ajustes (rueda).

Maqueta: `disenos/maqueta-pantalla-principal.html` (abrir en navegador).

**Pendiente de diseñar:** pantalla de Perfil, pantalla de Escaneo, mapa grande.

## Flujo de trabajo

Usamos el plugin **Superpowers**: brainstorming → spec → plan de implementación →
ejecución con pruebas. Estamos en fase de diseño (brainstorming). Aún NO se ha
escrito código de la app ni el plan de implementación.

## Sistema de sesión (skills y hooks)

Al **empezar** a trabajar: ejecuta la skill `session-bootstrap` (lee HANDOVER +
CLAUDE + git y reporta dónde estamos). Al **terminar**: ejecuta `session-end`
(reescribe `HANDOVER.md` y propone commit).

- `HANDOVER.md` = estado vivo. Es el primer archivo que se lee cada sesión.
- Skills en `.claude/skills/`: `session-bootstrap`, `session-end`,
  `nueva-pantalla`, `revisor-alergenos`.
- Agente en `.claude/agents/`: `revisor-react-native`.
- Hooks en `.claude/scripts/` (avisan al arrancar y vigilan el contexto).

## Dónde está cada cosa

- `docs/ESTADO-PROYECTO.md` — estado detallado y decisiones tomadas.
- `docs/superpowers/specs/2026-06-03-diseno-inicial-design.md` — especificación de diseño.
- `disenos/` — maquetas HTML.

## Próximo paso al retomar

Diseñar la pantalla de **Perfil** (subsistema A): cómo registra el usuario sus
alérgenos e intolerancias, y dónde encajan los recordatorios de medicación (B).
