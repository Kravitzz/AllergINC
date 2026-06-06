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
| A | Perfil de usuario: registro de alergias e intolerancias | Diseñado |
| B | Recordatorios periódicos de medicación/suplementos | Diseñado (en Calendario) |
| C | Repositorio de menús de restaurantes (filtrados por perfil) | Interfaz diseñada (Explorar); datos pendientes |
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

> **Tema oscuro** en toda la app (paleta `#0e0e10`/`#1a1a1c`, acento azul `#4a90d9`).
> Usuario de ejemplo: **Alberto**.
>
> **Indicativo de compatibilidad** (mapa, listas, tarjetas y fichas): **Seguro**
> (verde) · **Precaución** (naranja) · **Peligro** (rojo) · **Sin información**
> (gris). La ausencia de dato NUNCA es "seguro". (La gravedad de los alérgenos del
> perfil usa rojo/naranja/verde menta; es un contexto distinto.)
>
> **Barra inferior (5 botones):** Inicio · Perfil · Escanear (centro, elevado) ·
> Calendario · Ajustes.

**Pantalla de Inicio (rediseñada, aprobada).** Estilo descubrimiento. Maqueta:
`disenos/maqueta-pantalla-principal.html`.
- Saludo "Hola, Alberto · ¿Qué vamos a comer hoy?" + buscador.
- Tres accesos: Favoritos · Locales · **Explorar** (abre el mapa).
- Filtros por tipo: Cafeterías · Desayuno · Comidas · Cena · Para llevar · Postres.
- Rejilla de tarjetas de local (foto, distancia, indicativo de compatibilidad y
  los alérgenos del usuario presentes, con "+N" si hay más).

**Pantalla Perfil (aprobada).** Subsistema A. Maqueta: `disenos/maqueta-perfil.html`.
- Conmutador superior: pestañas "Perfil" / "Noticias" (tablón futuro de cambios
  en cartas y novedades de favoritos; SIN concretar aún).
- "Mis alérgenos": cuadrícula 4 columnas con los 14 obligatorios + propios.
- Gravedad por color: rojo = grave, naranja = medio, verde menta = leve, gris =
  sin alergia. (El verde "apto" de mapa/menús es de otro contexto.)
- "Alérgenos": lista de los activos de los 14, con su gravedad (badge tipo pastilla)
  y el medicamento/tratamiento que lo controla (en cursiva).
- "Otros alérgenos": alérgenos propios fuera de los 14, categorizados por cercanía
  a uno de ellos; se añaden con el icono `+` del placeholder.
- Los recordatorios de medicación YA NO están en Perfil: viven en Calendario.

**Pantalla Calendario (aprobada).** Subsistema B (largo plazo). Dos vistas con un
conmutador CALENDARIO / AGENDA arriba a la derecha:
- Rejilla mensual (`disenos/maqueta-calendario.html`): citas marcadas con círculo
  de color por importancia (alta/media/baja); punto verde bajo el día = evento
  diario, punto teal = mensual. Lista de eventos del día + "Próximos". Botón `+`.
- Agenda/línea de tiempo (`disenos/maqueta-calendario-agenda.html`): eventos por
  hora, con segmentado DÍA / SEMANA / MES. Botón `+` flotante.

**Pantalla Noticias (aprobada).** Pestaña gemela de Perfil. Maqueta:
`disenos/maqueta-noticias.html`. Tablón de cambios en cartas de favoritos y
novedades, con tarjetas de color según el indicativo y filtros Todo/Favoritos/Alertas.

**Pantalla Explorar (aprobada).** Subsistema C, se abre desde "Explorar" en Inicio.
Maquetas: `maqueta-explorar.html` (mapa), `maqueta-explorar-preview.html`
(emergente al tocar un pin) y `maqueta-ficha-local.html` (ficha completa).
- Mapa con react-native-maps pintando NUESTROS locales (Cloudflare D1), no Google
  Places; pines por compatibilidad y hoja inferior deslizable con la lista.
- Filtros por tipo + conmutador "Aptos para mí".
- Emergente (nombre, valoración, tipo/precio, alérgenos, "Más detalles") → ficha
  completa (compatibilidad, alérgenos por plato, carta, info y acciones nativas:
  cómo llegar/llamar/compartir).

**Pendiente de diseñar:** Escaneo (D) y Ajustes.

## Flujo de trabajo

Usamos el plugin **Superpowers**: brainstorming → spec → plan de implementación →
ejecución con pruebas. Estamos en fase de diseño (brainstorming). Aún NO se ha
escrito código de la app ni el plan de implementación.

El estado exacto dentro del flujo está en `docs/FLUJO-SUPERPOWERS.md`. La memoria
del proyecto son los documentos, no las conversaciones: mientras el repositorio
exista y esté commiteado, no se pierde nada.

## Sistema de sesión (comandos y hooks)

Al **empezar** a trabajar: ejecuta `/inicio` (lee HANDOVER + CLAUDE + git y reporta
dónde estamos). Al **terminar**: ejecuta `/cierre` (reescribe `HANDOVER.md` y
propone commit).

- `HANDOVER.md` = estado vivo. Primer archivo que se lee cada sesión.
- Comandos en `.claude/commands/`: `/inicio`, `/cierre`, `/pantalla`, `/revisa`.
- Agente en `.claude/agents/`: `revisor-rn`.
- Hooks en `.claude/scripts/` (avisan al arrancar y vigilan el contexto).

## Dónde está cada cosa

- `docs/ESTADO-PROYECTO.md` — estado detallado y decisiones tomadas.
- `docs/superpowers/specs/2026-06-03-diseno-inicial-design.md` — especificación de diseño.
- `disenos/` — maquetas HTML.

## Próximo paso al retomar

Aprobadas y en tema oscuro: Inicio, Perfil, Calendario, Noticias y Explorar (con
emergente y ficha de local). Pendientes:
1. **Pantalla de Escaneo (subsistema D):** cámara → OCR → comparación con el perfil.
2. **Pantalla de Ajustes.**

Sin resolver (no es diseño): origen real de los datos de menús (C).
