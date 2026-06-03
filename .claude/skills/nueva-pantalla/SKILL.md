---
name: nueva-pantalla
description: Diseña e implementa una pantalla nueva de la app de alérgenos siguiendo el sistema de diseño y la navegación ya acordados. Usar cuando se vaya a crear cualquier pantalla (Perfil, Escaneo, Mapa grande, Ajustes, etc.).
---

# Nueva pantalla — App de alérgenos

Crea una pantalla nueva manteniendo coherencia con lo ya decidido. NO inventes
un estilo nuevo cada vez.

## Antes de empezar

1. **Read** `docs/superpowers/specs/` (la spec de diseño más reciente) para no
   contradecir decisiones tomadas.
2. **Read** la maqueta más cercana en `disenos/` para reutilizar patrones visuales.

## Patrones fijos del proyecto (no cambiar sin avisar al usuario)

- **Navegación inferior de 4 botones:** Explorar (lupa) · Perfil (persona) ·
  Escanear (centro, resaltado) · Ajustes (rueda). Toda pantalla principal la lleva.
- **Código de color por compatibilidad con el perfil:** verde = apto, ámbar =
  precaución, rojo = contiene alérgeno del usuario.
- **Aviso de seguridad:** cualquier pantalla que muestre si un plato/local es
  "apto" debe incluir un recordatorio de verificar con el restaurante. No es
  opcional: es una app de seguridad alimentaria.
- **Idioma de la interfaz:** español. Mínimos términos en inglés.

## Flujo

1. Propón la estructura de la pantalla de arriba abajo (texto), antes de maquetar.
2. Espera validación del usuario sobre la estructura.
3. Genera la maqueta en `disenos/maqueta-[nombre].html` (HTML autocontenido,
   abrible en navegador, iconos Tabler).
4. Si ya hay código de la app (React Native), implementa el componente solo tras
   aprobar la maqueta.

## Reglas

- Una pantalla = un propósito claro. Si hace demasiado, divídela.
- Reutiliza componentes existentes antes de crear nuevos.
- Responde en español, conciso.
