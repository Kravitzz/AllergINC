# Estado del proyecto

Última actualización: 2026-06-06

## Resumen

Fase actual: **diseño (brainstorming)**, en **tema oscuro**. Pantallas aprobadas:
Inicio, Explorar (mapa + emergente + ficha de local), Perfil, Calendario (rejilla
y agenda) y Noticias. Sin código de app ni plan de implementación todavía.

## Decisiones tomadas

1. **Alcance inicial acotado a los 14 alérgenos del Reglamento UE 1169/2011.** Es
   la información que los restaurantes están legalmente obligados a tener, lo que
   resuelve parcialmente el cuello de botella de los datos.
2. **Construcción por fases.** Primero perfil (A) y recordatorios (B), que no
   dependen de datos externos ni de IA. Después repositorio de menús (C) y
   escaneo con IA (D).
3. **Pantalla principal aprobada** como versión 1 (híbrido mapa + accesos).
4. **Pila tentativa:** React Native + Expo / Cloudflare D1 / API de IA por decidir.
5. **Pantalla Perfil aprobada** (subsistema A). Gravedad por color rojo/naranja/
   verde menta; cuadrícula de 14 + propios; lista "Alérgenos" con medicamento que
   controla cada uno; sección "Otros alérgenos" para los propios. Los recordatorios
   ya NO están en Perfil.
6. **Barra inferior ampliada a 5 botones:** Explorar · Perfil · Escanear (centro)
   · Calendario · Ajustes.
7. **Pantalla Calendario aprobada** (subsistema B, largo plazo). Dos vistas
   (rejilla mensual + agenda/línea de tiempo) con conmutador CALENDARIO/AGENDA;
   citas con importancia alta/media/baja; medicación diaria (punto) y mensual.
8. **Tema oscuro adoptado en toda la app.**
9. **Inicio rediseñado** (estilo descubrimiento) y **Noticias** definida (tablón).
10. **Explorar diseñado** (subsistema C): mapa con pines por compatibilidad sobre
    nuestro repositorio (no Google Places), emergente al tocar un pin y ficha
    completa del local. Acciones nativas (cómo llegar/llamar/compartir) viables.
11. **Indicativo de compatibilidad unificado:** Seguro / Precaución / Peligro /
    Sin información. La ausencia de dato nunca es "seguro".

## Decisiones pendientes (a resolver al retomar)

- Diseño de la pantalla de Escaneo (D) y elección del proveedor de IA + su coste.
- Diseño de la pantalla de Ajustes.
- Fuente de valoraciones (propia en D1 vs Google con atribución y coste).
- De dónde salen los datos de menús (C): ¿los introduce el restaurante?, ¿se
  importan de fuentes públicas?, ¿los valida alguien?

## Riesgos identificados

- **Fiabilidad de datos = seguridad del usuario.** Información errónea puede
  causar una reacción alérgica grave. Necesita avisos de verificación y, más
  adelante, condiciones de uso y exención de responsabilidad revisadas.
- **Coste de la IA de escaneo (D).** Coste por uso; conviene estimarlo antes de
  diseñar esa función a fondo.
- **Obtención de datos de menús (C).** Es el principal cuello de botella.

## Historial de cambios

- 2026-06-03: Creación del repositorio, estructura, contexto y primera maqueta.
- 2026-06-04: Pantalla Perfil diseñada y aprobada (maqueta `maqueta-perfil.html`);
  barra inferior ampliada a 5 botones con Calendario.
- 2026-06-05: Pantalla Calendario diseñada y aprobada (rejilla + agenda). Tema
  oscuro aplicado a Inicio, Perfil y Calendario. Perfil reestructurado (sin
  recordatorios, nuevas secciones "Alérgenos" y "Otros alérgenos" con medicamento).
- 2026-06-06: Inicio rediseñado (descubrimiento) y Noticias definida. Diseñado
  Explorar (mapa + emergente + ficha de local). Indicativo de compatibilidad
  unificado (Seguro/Precaución/Peligro/Sin información). README profesional con
  imágenes de todas las pantallas.
