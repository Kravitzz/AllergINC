# Especificación de diseño inicial

Fecha: 2026-06-03 (ampliada 2026-06-06)
Estado: Inicio, Explorar (mapa + emergente + ficha), Perfil, Calendario y Noticias
aprobadas, en tema oscuro. Pendientes: Escaneo (D) y Ajustes.

> **Tema visual:** toda la app va en **tema oscuro** (fondo `#0e0e10`/`#1a1a1c`,
> acento azul `#4a90d9`). Usuario de ejemplo: Alberto.
>
> **Indicativo de compatibilidad** (mapa, listas, fichas): Seguro (verde) ·
> Precaución (naranja) · Peligro (rojo) · Sin información (gris). La ausencia de
> dato nunca es "seguro".

## Propósito

Definir el diseño de la app de alérgenos antes de implementar. Este documento es
un documento vivo: se amplía a medida que se diseñan más pantallas.

## Pantalla de Inicio (rediseñada, aprobada)

Estilo descubrimiento (referencia: apps tipo Grab Discover).
Maqueta: `disenos/maqueta-pantalla-principal.html`.

### Estructura, de arriba abajo

1. **Saludo** "Hola, Alberto · ¿Qué vamos a comer hoy?" + buscador.
2. **Tres accesos:** Favoritos · Locales · **Explorar** (abre el mapa).
3. **Filtros por tipo:** Cafeterías · Desayuno · Comidas · Cena · Para llevar · Postres.
4. **Rejilla de tarjetas de local** (2 columnas): foto, nombre, distancia,
   indicativo de compatibilidad y los alérgenos del usuario presentes.
5. **Barra inferior de 5 botones:** Inicio · Perfil · Escanear (centro, elevado) ·
   Calendario · Ajustes.

### Decisiones de diseño

- Las tarjetas priorizan los alérgenos más graves; si hay más de los que caben,
  se indica con "+N", que abre el detalle del local.
- El indicativo "Peligro" combina rojo/naranja (diagonal) cuando el local tiene a
  la vez alérgenos graves y leves del usuario.
- El botón de escanear se resalta en el centro por ser la acción del momento
  crítico (estar frente a una carta).

## Pantalla Perfil (aprobada)

Subsistema A. Maqueta: `disenos/maqueta-perfil.html`. (Los recordatorios de
medicación se movieron a Calendario; Perfil queda centrado en los alérgenos.)

### Estructura, de arriba abajo

1. **Conmutador superior (2 pestañas tipo píldora):** "Perfil" (activa) y
   "Noticias". Noticias es un tablón futuro, aún SIN concretar.
2. **Cabecera:** avatar + nombre + subtítulo "Mis alérgenos".
3. **Mis alérgenos:** cuadrícula de 4 columnas con los 14 alérgenos obligatorios
   (UE 1169/2011) + los alérgenos propios. Fichas de poca altura.
4. **Alérgenos:** lista de los activos de los 14, cada uno con su gravedad (badge
   tipo pastilla) y el medicamento/tratamiento que lo controla (en cursiva).
5. **Otros alérgenos:** lista de los alérgenos propios fuera de los 14, anclada al
   fondo; cada uno con medicamento (cursiva) + cercanía a uno de los 14.
6. **Barra inferior de 5 botones:** Explorar · Perfil · Escanear (centro, elevado)
   · Calendario · Ajustes.

### Decisiones de diseño

- **Gravedad por color:** cada alérgeno activo es 🔴 Grave, 🟠 Medio o 🟢 Leve
  (verde menta); gris = sin alergia. El badge es una pastilla sólida (estilo del
  Calendario). El verde "apto" de mapa/menús es de otro contexto.
- **Interacción de gravedad:** tocar una ficha cicla gris → leve → medio → grave →
  gris.
- **Alérgenos propios:** el botón de añadir es el icono `+` (cuadro punteado) de la
  fila placeholder "Espacio para el siguiente…" en "Otros alérgenos". Al añadir uno
  se rellena nombre + cercanía a uno de los 14, y se suma como ficha a la cuadrícula
  con su color de gravedad.
- **Medicamento por alérgeno:** bajo cada nombre (en "Alérgenos" y "Otros") se
  muestra el medicamento que lo controla, en cursiva; los horarios/pautas se ven en
  Calendario.

## Pantalla Calendario (aprobada)

Subsistema B (planificación a largo plazo: medicación y citas médicas con
antelación). Dos vistas con un conmutador CALENDARIO / AGENDA arriba a la derecha.

### Vista rejilla — `disenos/maqueta-calendario.html`
- Mes y año grandes arriba a la izquierda; rejilla mensual compacta.
- **Citas:** círculo de color sobre el día según importancia (alta/media/baja, la
  define el usuario al crear el evento). El día de hoy lleva un anillo claro.
- **Medicación:** punto verde bajo el día = evento diario (los detalles se ven en
  agenda); punto teal = evento mensual.
- Debajo, lista del día seleccionado + sección "Próximos". Botón `+` flotante.

### Vista agenda — `disenos/maqueta-calendario-agenda.html`
- Línea de tiempo por horas con los eventos del día (estilo Google Calendar).
- Segmentado DÍA / SEMANA / MES para cambiar el rango y saltar a meses lejanos.
- Botón `+` flotante para añadir eventos.

## Pantalla Explorar (aprobada)

Subsistema C: descubrir y filtrar locales en un mapa, con datos de alérgenos de
nuestro repositorio. Se abre desde el acceso "Explorar" de Inicio.

### Vista mapa — `disenos/maqueta-explorar.html`
- Mapa a pantalla completa con la ubicación del usuario y **pines por
  compatibilidad** (Seguro / Precaución / Peligro / Sin información).
- Buscador, filtros por tipo y conmutador **"Aptos para mí"**.
- "Buscar en esta zona" al mover el mapa y botón de recentrar.
- **Hoja inferior deslizable** con la lista de locales (veredicto + alérgenos),
  con la nota "Datos de nuestra base · verifica siempre con el local".
- Técnico: react-native-maps pintando locales de Cloudflare D1 (no Google Places),
  para evitar coste por petición y mostrar datos propios de alérgenos.

### Emergente al tocar un pin — `disenos/maqueta-explorar-preview.html`
Tarjeta flotante (estilo Google Maps): nombre + veredicto, valoración en estrellas,
tipo y precio medio, estado (abierto/cierra), alérgenos coincidentes y botón
**"Más detalles"** que abre la ficha. (Valoración: fuente por decidir, propia en
D1 o Google con atribución y coste.)

### Ficha del local — `disenos/maqueta-ficha-local.html`
Foto, nombre, valoración, tipo/precio, horario y dirección; **banner de
compatibilidad** con los alérgenos del usuario presentes y aviso de verificar +
fecha del dato; "Tus alérgenos en este local" (en qué platos), carta con alérgenos
por plato, e información. Acciones nativas: **Cómo llegar** (abre Maps), **Llamar**
(`tel:`) y **Compartir** (hoja del sistema). La barra inferior se mantiene visible.

## Pantalla Noticias (aprobada)

Pestaña gemela de Perfil (`disenos/maqueta-noticias.html`): tablón de cambios en
cartas de favoritos y novedades, con tarjetas de color según el indicativo y
filtros Todo / Favoritos / Alertas.

## Pantallas pendientes de diseñar

- **Escaneo (subsistema D):** flujo de cámara → OCR → comparación con el perfil.
- **Ajustes:** datos de cuenta, privacidad y configuración general.

## Restricción transversal

Alcance inicial limitado a los 14 alérgenos del Reglamento UE 1169/2011. La
fiabilidad de la información es un requisito de seguridad, no solo de calidad.
