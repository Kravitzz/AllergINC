# HANDOVER — AllergINC

**Última sesión:** 2026-06-04
**Branch:** main
**Último commit:** `0bf0364 docs: guia de instalacion de herramientas por fases (Node, Expo, Cloudflare, MCP)`

---

## Estado del proyecto
Fase de diseño. Dos pantallas aprobadas: principal y Perfil. El repositorio ya
está publicado en GitHub (`Kravitzz/AllergINC`). Sin código de aplicación todavía.

## Hecho en la sesión actual (2026-06-04)
- Repositorio subido a GitHub y rama `main` siguiendo a `origin/main`.
- Diseñada y aprobada la **pantalla Perfil** (subsistemas A + B): maqueta
  `disenos/maqueta-perfil.html`.
- Conmutador superior Perfil / Noticias; cuadrícula de 14 alérgenos + propios;
  sección "Otros alérgenos"; recordatorios de la semana anclados al fondo.
- Gravedad por color (rojo/naranja/amarillo, sin verde); botón de añadir alérgeno
  propio en el placeholder de "Otros alérgenos".
- Barra inferior ampliada de 4 a 5 botones (se añade Calendario); escaneo centrado
  y elevado con icono `ti-scan`.
- Documentación sincronizada: CLAUDE.md, spec de diseño, ESTADO-PROYECTO.md y el
  patrón fijo del comando `/pantalla`.

## Pantallas / módulos en estado
- Pantalla principal — diseñada (maqueta aprobada).
- Perfil (A) — diseñada (maqueta aprobada).
- Recordatorios de medicación (B) — diseñados dentro de Perfil (semana actual).
- Calendario (B largo plazo) — pendiente de diseñar.
- Noticias (tablón) — pendiente de diseñar.
- Mapa grande / Explorar (C) — pendiente.
- Escaneo con IA (D) — pendiente.
- Código de la app (React Native) — no iniciado.

## Decisiones cerradas (no reabrir)
- Alcance inicial = 14 alérgenos del Reglamento UE 1169/2011.
- Construcción por fases: A+B antes que C+D.
- Pila: React Native + Expo / Cloudflare D1 / IA de escaneo por decidir.
- Pantalla principal: saludo + minimapa + vistos recientes + barra inferior.
- Pantalla Perfil aprobada: A + B en una sola pantalla.
- Gravedad por color = rojo (grave) / naranja (medio) / amarillo (leve) / gris
  (sin alergia). El verde queda reservado a "apto" (mapa y menús).
- Alérgenos propios: se añaden fuera de los 14, categorizados por cercanía a uno
  de ellos, y aparecen en la cuadrícula con su color de gravedad.
- Barra inferior = 5 botones: Explorar · Perfil · Escanear (centro) · Calendario
  · Ajustes.
- Recordatorios en Perfil = semana actual; el largo plazo va en Calendario.

## Riesgos y avisos vivos
- Fiabilidad de datos = seguridad del usuario. Ausencia de dato nunca es "apto".
- Conflicto de color resuelto: verde NUNCA debe significar "alergia leve" (riesgo
  de confusión con "apto"). Mantener la escala de calor sin verde.
- Coste de la IA de escaneo (D): estimar antes de diseñar esa función a fondo.
- Origen de los datos de menús (C): principal cuello de botella, sin resolver.

## Próximo paso concreto
**Diseñar la siguiente pantalla con `/pantalla [nombre]`.** Candidatas, a elegir:
1. Calendario (B a largo plazo: medicación anual + citas médicas).
2. Noticias (tablón de cambios en cartas y novedades de favoritos).
3. Escaneo (D) o mapa grande / Explorar (C).

## Pendientes
- [ ] Añadir `CLAUDE.md` al Conocimiento del proyecto en la app web de Claude.
- [ ] Definir la ventana de añadir alérgeno propio (campo texto + selector de
      cercanía) como maqueta aparte.
- [ ] Elegir cuál es la próxima pantalla a diseñar.

## Comando para reanudar
/inicio
