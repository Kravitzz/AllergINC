# Especificación de diseño inicial

Fecha: 2026-06-03 (ampliada 2026-06-05)
Estado: parcial (Inicio, Perfil y Calendario aprobadas y en tema oscuro; Noticias,
escaneo y mapa pendientes)

> **Tema visual:** toda la app va en **tema oscuro** (fondo `#0e0e10`/`#1a1a1c`,
> acento azul `#4a90d9`). La pantalla de Inicio queda pendiente de un rediseño.

## Propósito

Definir el diseño de la app de alérgenos antes de implementar. Este documento es
un documento vivo: se amplía a medida que se diseñan más pantallas.

## Pantalla principal (aprobada)

### Estructura, de arriba abajo

1. **Saludo personalizado.** "Hola, {nombre} · ¿Qué vamos a comer hoy?".
2. **Minimapa.** Ubicación del usuario + locales cercanos vistos de un vistazo.
   - Pines con color según el perfil del usuario:
     - Verde: el local no contiene ninguno de los alérgenos del usuario.
     - Ámbar: precaución (contiene alguno o falta información).
   - Acceso "Ver mapa" → pantalla de mapa grande (Explorar).
3. **Vistos recientemente / Favoritos.** Lista de locales consultados, con opción
   de marcar favoritos y aviso rápido de compatibilidad con el perfil.
4. **Barra inferior de navegación, 4 botones:**
   - Explorar (lupa) → mapa grande.
   - Perfil (persona) → alérgenos, intolerancias y recordatorios.
   - Escanear (centro, resaltado) → cámara para leer cartas y platos.
   - Ajustes (rueda) → datos, número, privacidad, configuración general.

### Decisiones de diseño

- El botón de escanear se resalta en el centro por ser la acción del momento
  crítico (estar frente a una carta). Posición revisable.
- Icono de "escanear" (no de QR) porque se leen cartas y platos completos, no solo
  códigos.

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

## Pantallas pendientes de diseñar

- **Inicio:** rediseño pendiente (mejorar la versión actual).
- **Noticias:** tablón de cambios en cartas y novedades de favoritos (sin concretar).
- **Escaneo (subsistema D):** flujo de cámara → OCR → comparación con perfil.
- **Mapa grande (Explorar / subsistema C):** búsqueda y filtrado de locales.

## Restricción transversal

Alcance inicial limitado a los 14 alérgenos del Reglamento UE 1169/2011. La
fiabilidad de la información es un requisito de seguridad, no solo de calidad.
