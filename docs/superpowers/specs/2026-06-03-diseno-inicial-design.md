# Especificación de diseño inicial

Fecha: 2026-06-03
Estado: parcial (solo pantalla principal aprobada; perfil y escaneo pendientes)

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

## Pantallas pendientes de diseñar

- **Perfil (subsistema A):** registro de alérgenos e intolerancias + recordatorios
  de medicación (subsistema B).
- **Escaneo (subsistema D):** flujo de cámara → OCR → comparación con perfil.
- **Mapa grande (Explorar / subsistema C):** búsqueda y filtrado de locales.

## Restricción transversal

Alcance inicial limitado a los 14 alérgenos del Reglamento UE 1169/2011. La
fiabilidad de la información es un requisito de seguridad, no solo de calidad.
