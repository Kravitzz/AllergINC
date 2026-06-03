#!/usr/bin/env bash
# Aviso de arranque de sesión
echo 0 > .claude/.prompt_counter

if [ -f HANDOVER.md ]; then
  LAST=$(grep -m1 "Última sesión:" HANDOVER.md | sed 's/.*Última sesión:\*\* //')
  echo "▶ Última sesión: $LAST"
  echo "▶ Ejecuta /inicio como primer comando."
else
  echo "▶ No existe HANDOVER.md. Ejecuta /cierre al cerrar para crearlo."
fi
exit 0
