# HANDOVER — AllergINC

**Última sesión:** 2026-06-05
**Branch:** main
**Último commit:** `5d3d4f7 docs: actualizar HANDOVER al cierre de sesion (commit README)`

---

## Estado del proyecto
Fase de diseño, en **tema oscuro**. Tres pantallas aprobadas: Inicio, Perfil y
Calendario (dos vistas). Repositorio publicado en GitHub (`Kravitzz/AllergINC`).
Sin código de aplicación todavía.

## Hecho en la sesión actual (2026-06-05)
- **Pantalla Calendario** diseñada y aprobada (subsistema B, largo plazo):
  - Vista rejilla (`disenos/maqueta-calendario.html`): citas con círculo de color
    por importancia (alta/media/baja), punto verde = evento diario, punto teal =
    mensual; lista del día + "Próximos"; botón `+` flotante.
  - Vista agenda (`disenos/maqueta-calendario-agenda.html`): línea de tiempo por
    horas + segmentado DÍA/SEMANA/MES; botón `+` flotante.
  - Conmutador CALENDARIO / AGENDA arriba a la derecha.
- **Tema oscuro** aplicado a Inicio, Perfil y Calendario (paleta común).
- **Perfil reestructurado:** se quitaron los recordatorios (ahora en Calendario);
  nueva sección "Alérgenos" (activos de los 14 con su medicamento en cursiva) y
  "Otros alérgenos" anclada al fondo; gravedad con badge tipo pastilla; "Leve" en
  verde menta; fichas de la cuadrícula más bajas.
- **Inicio:** pasado a oscuro y barra ampliada a 5 botones (faltaba Calendario).
- Capturas PNG de las 4 maquetas en `disenos/capturas/` (generadas con Edge
  headless; sin iconos por el CDN, se ven al abrir el HTML).
- Documentación sincronizada: CLAUDE.md, spec, ESTADO-PROYECTO.md y README (con
  imágenes de las pantallas).

## Pantallas / módulos en estado
- Inicio — diseñada (oscuro), pendiente de rediseño/mejora.
- Perfil (A) — diseñada y aprobada (oscuro).
- Calendario (B) — diseñada y aprobada (oscuro, 2 vistas).
- Noticias — pendiente (pestaña en Perfil, sin concretar).
- Mapa grande / Explorar (C) — pendiente.
- Escaneo con IA (D) — pendiente.
- Código de la app (React Native) — no iniciado.

## Decisiones cerradas (no reabrir)
- Alcance inicial = 14 alérgenos del Reglamento UE 1169/2011.
- Construcción por fases: A+B antes que C+D.
- Pila: React Native + Expo / Cloudflare D1 / IA de escaneo por decidir.
- Pantalla principal: saludo + minimapa + vistos recientes + barra inferior.
- Barra inferior = 5 botones: Explorar · Perfil · Escanear (centro) · Calendario
  · Ajustes.
- **Tema oscuro en toda la app** (fondo `#0e0e10`/`#1a1a1c`, acento azul `#4a90d9`).
- Perfil (A): cuadrícula de 14 + propios; lista "Alérgenos" con medicamento;
  "Otros alérgenos" para los propios (categorizados por cercanía); SIN recordatorios.
- Gravedad por color: rojo = grave, naranja = medio, verde menta = leve, gris =
  sin alergia. Badge tipo pastilla.
- Calendario (B): dos vistas (rejilla + agenda), importancia de citas alta/media/
  baja, medicación diaria (punto) y mensual; los recordatorios viven aquí.

## Riesgos y avisos vivos
- Fiabilidad de datos = seguridad del usuario. Ausencia de dato nunca es "apto".
- El **verde** sigue reservado a "apto" en mapa/menús. En Perfil se usó verde menta
  para "leve" y en Calendario verde para "evento diario": son otras pantallas, pero
  vigilar que no se confundan con "apto" cuando se diseñe la comparación de menús.
- Coste de la IA de escaneo (D): estimar antes de diseñar esa función a fondo.
- Origen de los datos de menús (C): principal cuello de botella, sin resolver.

## Próximo paso concreto
**Dos tareas acordadas para la próxima sesión:**
1. **Rediseñar la pantalla de Inicio** (`/pantalla Inicio`): el usuario quiere
   mejorarla a fondo.
2. **Concretar la pantalla de Noticias** (pestaña dentro de Perfil): definir qué
   muestra y cómo, aún sin diseñar.

## Pendientes
- [ ] Rediseño de Inicio.
- [ ] Diseño de Noticias.
- [ ] Añadir `CLAUDE.md` al Conocimiento del proyecto en la app web de Claude.
- [ ] Definir la ventana de añadir alérgeno propio (campo texto + selector de
      cercanía) como maqueta aparte.

## Comando para reanudar
/inicio
