# Estado del proyecto

Última actualización: 2026-06-04

## Resumen

Fase actual: **diseño (brainstorming)**. Dos pantallas aprobadas (principal y
Perfil). Sin código de app ni plan de implementación todavía.

## Decisiones tomadas

1. **Alcance inicial acotado a los 14 alérgenos del Reglamento UE 1169/2011.** Es
   la información que los restaurantes están legalmente obligados a tener, lo que
   resuelve parcialmente el cuello de botella de los datos.
2. **Construcción por fases.** Primero perfil (A) y recordatorios (B), que no
   dependen de datos externos ni de IA. Después repositorio de menús (C) y
   escaneo con IA (D).
3. **Pantalla principal aprobada** como versión 1 (híbrido mapa + accesos).
4. **Pila tentativa:** React Native + Expo / Cloudflare D1 / API de IA por decidir.
5. **Pantalla Perfil aprobada** (subsistemas A + B). Gravedad por color rojo/
   naranja/amarillo (sin verde, reservado a "apto"); alérgenos propios añadibles
   con categorización por cercanía a los 14; recordatorios = semana actual.
6. **Barra inferior ampliada a 5 botones:** Explorar · Perfil · Escanear (centro)
   · Calendario · Ajustes.

## Decisiones pendientes (a resolver al retomar)

- Diseño de la pantalla de Escaneo y elección del proveedor de IA + su coste.
- Diseño del mapa grande (pantalla "Explorar").
- Diseño de la pantalla Noticias (tablón) y Calendario (largo plazo).
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
