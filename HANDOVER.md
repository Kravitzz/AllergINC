# HANDOVER — AllergINC

**Última sesión:** 2026-06-06
**Branch:** main
**Último commit:** `cd125c0 docs: regenerar capturas centradas y cuadricula de pantallas en el README`

---

## Estado del proyecto
Fase de diseño, en tema oscuro. Pantallas aprobadas: Inicio (descubrimiento),
Explorar (mapa + emergente + ficha de local), Perfil, Calendario (rejilla y
agenda) y Noticias. Repositorio en GitHub (`Kravitzz/AllergINC`). Sin código de app.

## Hecho en la sesión actual (2026-06-06)
- **Noticias** definida (tablón de cambios en favoritos, filtros, tarjetas por color).
- **Inicio rediseñado** estilo descubrimiento: saludo + buscador, accesos
  Favoritos/Locales/Explorar, filtros por tipo y rejilla de tarjetas de local.
- **Explorar** diseñado (subsistema C): mapa con pines por compatibilidad sobre
  nuestro repositorio, hoja inferior deslizable, emergente al tocar un pin y
  **ficha completa del local** (compatibilidad, alérgenos por plato, carta, info,
  acciones nativas cómo llegar/llamar/compartir).
- **Indicativo de compatibilidad unificado:** Seguro / Precaución / Peligro / Sin
  información (texto negro). Usuario de ejemplo cambiado a **Alberto**.
- Barra inferior: primer botón pasa de Explorar a **Inicio** en todas las pantallas.
- **README profesional** (sin emojis) con público objetivo, alcance, seguridad,
  pila e imágenes centradas de las 8 pantallas. Capturas en `disenos/capturas/`.
- Docs sincronizados: CLAUDE.md, spec, ESTADO-PROYECTO.md y patrón de `/pantalla`.

## Pantallas / módulos en estado
- Inicio — diseñada y aprobada.
- Explorar (C, interfaz) — diseñada (mapa + emergente + ficha de local).
- Perfil (A) — diseñada y aprobada.
- Calendario (B) — diseñada y aprobada (2 vistas).
- Noticias — diseñada y aprobada.
- Escaneo con IA (D) — pendiente.
- Ajustes — pendiente.
- Datos de menús (C) y código de la app (React Native) — no iniciados.

## Decisiones cerradas (no reabrir)
- Alcance inicial = 14 alérgenos del Reglamento UE 1169/2011.
- Construcción por fases: A+B antes que C+D.
- Pila: React Native + Expo / Cloudflare D1 / IA de escaneo por decidir.
- Tema oscuro en toda la app (`#0e0e10`/`#1a1a1c`, acento `#4a90d9`). Usuario: Alberto.
- Barra inferior = 5 botones: Inicio · Perfil · Escanear (centro) · Calendario · Ajustes.
- Indicativo de compatibilidad: Seguro (verde) / Precaución (naranja) / Peligro
  (rojo) / Sin información (gris). Texto negro en los badges.
- Gravedad del alérgeno en Perfil: rojo (grave) / naranja (medio) / verde menta
  (leve) / gris (sin alergia). Contexto distinto del indicativo de local.
- Perfil (A): cuadrícula de 14 + propios; lista "Alérgenos" con medicamento (en
  cursiva); "Otros alérgenos" para los propios. Sin recordatorios (van en Calendario).
- Calendario (B): rejilla + agenda; importancia de citas; medicación diaria/mensual.
- Explorar (C): mapa con react-native-maps pintando NUESTROS locales (no Google
  Places); pin gris "Sin información" nunca verde. Acciones nativas viables.

## Riesgos y avisos vivos
- Fiabilidad de datos = seguridad del usuario. Ausencia de dato nunca es "seguro".
- Verde reservado a "Seguro/apto"; en Perfil el verde menta es "leve" (otro contexto).
- Valoraciones en estrellas: decidir fuente (propia en D1 vs Google con atribución
  y coste; Google no permite cachear >30 días).
- Coste de la IA de escaneo (D): estimar antes de diseñar esa función a fondo.
- Origen de los datos de menús (C): principal cuello de botella, sin resolver.

## Próximo paso concreto
**Diseñar la pantalla de Escaneo (subsistema D) con `/pantalla Escaneo`.**
1. Flujo cámara → OCR → comparación de ingredientes con el perfil.
2. Antes de profundizar: estimar proveedor de IA/OCR y su coste por uso.

## Pendientes
- [ ] Pantalla de Escaneo (D).
- [ ] Pantalla de Ajustes.
- [ ] Decidir fuente de valoraciones (propia vs Google).
- [ ] Maqueta de la ventana de añadir alérgeno propio (campo + selector de cercanía).
- [ ] Añadir `CLAUDE.md` al Conocimiento del proyecto en la app web de Claude.

## Comando para reanudar
/inicio
