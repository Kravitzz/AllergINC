---
description: Diseña e implementa una pantalla nueva siguiendo el sistema de diseño y la navegación ya acordados.
argument-hint: [nombre de la pantalla, ej. Perfil]
---

# /pantalla — Nueva pantalla (AllergINC)

Crea la pantalla "$ARGUMENTS" manteniendo coherencia con lo ya decidido. NO
inventes un estilo nuevo.

Antes de empezar:
1. Lee la spec más reciente en `docs/superpowers/specs/`.
2. Lee la maqueta más cercana en `disenos/` para reutilizar patrones.

Patrones fijos (no cambiar sin avisar):
- Tema oscuro (`#0e0e10`/`#1a1a1c`, acento azul `#4a90d9`). Usuario: Alberto.
- Barra inferior de 5 botones: Inicio (casa) · Perfil (persona) · Escanear
  (centro, elevado) · Calendario · Ajustes (rueda).
- Indicativo de compatibilidad: Seguro (verde) · Precaución (naranja) · Peligro
  (rojo) · Sin información (gris). La ausencia de dato NUNCA es "seguro".
- Gravedad del alérgeno en el perfil: rojo (grave) · naranja (medio) · verde menta
  (leve) · gris (sin alergia). Es un contexto distinto del indicativo de local.
- Aviso de seguridad: toda pantalla con veredicto de compatibilidad recuerda
  verificar con el restaurante. Obligatorio.
- Interfaz en español, mínimos términos en inglés.

Flujo:
1. Propón la estructura de la pantalla de arriba abajo (texto), antes de maquetar.
2. Espera validación.
3. Genera la maqueta en `disenos/maqueta-[nombre].html` (HTML autocontenido,
   iconos Tabler).
4. Si ya hay código React Native, implementa el componente solo tras aprobar la
   maqueta.

Reglas:
- Una pantalla = un propósito. Si hace demasiado, divídela.
- Reutiliza componentes existentes antes de crear nuevos.
- Responde en español, conciso.
