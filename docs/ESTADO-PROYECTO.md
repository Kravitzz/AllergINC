# Estado del proyecto

Última actualización: 2026-06-05

## Resumen

Fase actual: **diseño (brainstorming)**. Tres pantallas aprobadas (Inicio, Perfil
y Calendario), todas en **tema oscuro**. Sin código de app ni plan de
implementación todavía.

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
8. **Tema oscuro adoptado en toda la app.** Inicio quedó pendiente de rediseño.

## Decisiones pendientes (a resolver al retomar)

- **Rediseño de la pantalla de Inicio.**
- **Concretar la pantalla Noticias** (pestaña dentro de Perfil; sin definir).
- Diseño de la pantalla de Escaneo y elección del proveedor de IA + su coste.
- Diseño del mapa grande (pantalla "Explorar").
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
