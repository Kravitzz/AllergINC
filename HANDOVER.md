# HANDOVER — AllergINC

**Última sesión:** 2026-06-03
**Branch:** main
**Último commit:** (pendiente del próximo commit)

---

## Estado del proyecto

Fase de diseño. Una pantalla aprobada (principal). Repositorio con contexto,
maqueta y sistema de skills/hooks listo. Sin código de aplicación todavía.

## Hecho en la sesión actual (2026-06-03)

- Estructura del repositorio, `CLAUDE.md`, `README.md`, `.gitignore`.
- Spec de diseño inicial y documento de estado.
- Maqueta de la pantalla principal (híbrido mapa + accesos).
- Sistema de sesión: skills `session-bootstrap`, `session-end`, `nueva-pantalla`,
  `revisor-alergenos`; agente `revisor-react-native`; hooks de arranque y de
  vigilancia de contexto.

## Pantallas / módulos en estado

- Pantalla principal — diseñada (maqueta aprobada).
- Perfil (A) — pendiente de diseñar.
- Recordatorios de medicación (B) — pendiente.
- Mapa grande / Explorar (C) — pendiente.
- Escaneo con IA (D) — pendiente.
- Código de la app (React Native) — no iniciado.

## Decisiones cerradas (no reabrir)

- Alcance inicial = 14 alérgenos del Reglamento UE 1169/2011.
- Construcción por fases: A+B antes que C+D.
- Pila: React Native + Expo / Cloudflare D1 / IA de escaneo por decidir.
- Pantalla principal: saludo + minimapa + vistos recientes + barra de 4 botones.

## Riesgos y avisos vivos

- Fiabilidad de datos = seguridad del usuario (anafilaxia). Ausencia de dato nunca
  equivale a "apto".
- Coste de la IA de escaneo (D): estimar antes de diseñar esa función a fondo.
- Origen de los datos de menús (C): principal cuello de botella, sin resolver.

## Próximo paso concreto

**Diseñar la pantalla de Perfil (subsistema A) con el comando `/pantalla Perfil`.**

1. Definir qué datos registra el usuario (alérgenos, intolerancias, gravedad).
2. Decidir dónde encajan los recordatorios de medicación (B).
3. Maqueta en `disenos/maqueta-perfil.html`.

## Pendientes

- [ ] Subir el repositorio a GitHub (`git push`).
- [ ] Añadir `CLAUDE.md` al Conocimiento del proyecto en la app web de Claude.

## Comando para reanudar

Ejecuta /inicio.

> Estado exacto del flujo de Superpowers en `docs/FLUJO-SUPERPOWERS.md`.
