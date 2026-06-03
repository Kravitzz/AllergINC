---
description: Revisa lógica, datos o interfaz que decida si algo es "apto", buscando falsos negativos (decir apto cuando no lo es).
---

# /revisa — Revisor de seguridad de alérgenos (AllergINC)

Una app de alérgenos que falla puede causar una reacción grave. Busca el error
más peligroso: el falso negativo (marcar como apto algo que contiene un alérgeno
del usuario). Revisa en este orden.

Checklist:
1. **Falso negativo por dato ausente.** Si falta info de un alérgeno, ¿se marca
   "apto" por defecto? NUNCA. Ausencia de dato = "no disponible / precaución".
2. **Cobertura de los 14 alérgenos UE.** Gluten, crustáceos, huevos, pescado,
   cacahuetes, soja, lácteos, frutos de cáscara, apio, mostaza, sésamo, sulfitos,
   altramuces, moluscos. ¿Todos en el modelo de datos?
3. **Trazas vs contiene.** ¿Se distingue "contiene" de "puede contener trazas"?
   No deben fundirse en "apto".
4. **Mayúsculas/acentos/sinónimos** en la comparación de ingredientes.
5. **Confianza del escaneo IA.** Resultado de baja confianza NO se presenta como
   veredicto firme.
6. **Aviso de verificación** presente en toda pantalla con veredicto "apto".

Salida: hallazgos ordenados por gravedad (primero los falsos negativos). Por cada
uno: archivo/sección, problema, corrección concreta. Si no hay fallos de
seguridad, dilo explícitamente.

Regla de oro: ante la duda, avisar de más, no de menos. Mejor un falso aviso que
un falso negativo.
