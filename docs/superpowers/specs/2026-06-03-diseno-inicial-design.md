# Especificación de diseño inicial

Fecha: 2026-06-03 (ampliada 2026-06-04)
Estado: parcial (pantalla principal y Perfil aprobadas; escaneo y mapa pendientes)

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

Reúne los subsistemas A (alérgenos) y B (recordatorios) en una sola pantalla.
Maqueta: `disenos/maqueta-perfil.html`.

### Estructura, de arriba abajo

1. **Conmutador superior (2 pestañas tipo píldora):** "Perfil" (activa) y
   "Noticias". Noticias es un tablón futuro: cambios en cartas/menús y novedades
   de los restaurantes marcados como favoritos.
2. **Cabecera:** avatar + nombre + subtítulo "Mis alérgenos · mis recordatorios".
3. **Mis alérgenos:** cuadrícula de 4 columnas con los 14 alérgenos obligatorios
   (UE 1169/2011) + los alérgenos propios añadidos por el usuario.
4. **Otros alérgenos:** sección lista (mismo estilo que Recordatorios) con los
   alérgenos que el usuario añade fuera de los 14.
5. **Recordatorios de medicación:** lista de la semana actual, anclada al fondo.
6. **Barra inferior de 5 botones:** Explorar · Perfil · Escanear (centro, elevado)
   · Calendario · Ajustes.

### Decisiones de diseño

- **Gravedad por color (escala de calor, sin verde):** cada alérgeno activo es
  🔴 Grave, 🟠 Medio o 🟡 Leve; gris = sin alergia. El verde NO se usa aquí porque
  queda reservado a "apto" en mapa y menús (evita ambigüedad de seguridad).
- **Interacción de gravedad:** tocar una ficha cicla gris → leve → medio → grave →
  gris.
- **Alérgenos propios:** el botón de añadir es el icono `+` (cuadro punteado) de la
  fila placeholder "Espacio para el siguiente…" en la sección "Otros alérgenos".
  Al añadir uno se rellena nombre + categorización por cercanía a uno de los 14, y
  al terminar se suma como ficha a la cuadrícula "Mis alérgenos" con su color de
  gravedad y queda listado también en "Otros alérgenos".
- **Recordatorios = semana actual,** se actualizan solos. La planificación a largo
  plazo (citas médicas, medicación anual) vive en la pantalla Calendario.
- **Barra inferior pasa de 4 a 5 botones:** se añade Calendario entre Escanear y
  Ajustes, lo que permite centrar de forma simétrica el botón de Escanear (elevado,
  circular, icono de marco de escaneo `ti-scan`).

## Pantallas pendientes de diseñar

- **Noticias:** tablón de cambios en cartas y novedades de favoritos.
- **Calendario (subsistema B, largo plazo):** vista anual de medicación y citas.
- **Escaneo (subsistema D):** flujo de cámara → OCR → comparación con perfil.
- **Mapa grande (Explorar / subsistema C):** búsqueda y filtrado de locales.

## Restricción transversal

Alcance inicial limitado a los 14 alérgenos del Reglamento UE 1169/2011. La
fiabilidad de la información es un requisito de seguridad, no solo de calidad.
